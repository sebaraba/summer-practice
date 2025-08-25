-- Music Streaming Platform Database Schema
-- Created for Database Technology Training Program

-- Drop tables if they exist (for re-running the script)
DROP TABLE IF EXISTS listening_history CASCADE;
DROP TABLE IF EXISTS playlist_songs CASCADE;
DROP TABLE IF EXISTS playlists CASCADE;
DROP TABLE IF EXISTS songs CASCADE;
DROP TABLE IF EXISTS albums CASCADE;
DROP TABLE IF EXISTS artists CASCADE;
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS genres CASCADE;

-- Create genres table
CREATE TABLE genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT
);

-- Create artists table
CREATE TABLE artists (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50),
    formed_year INTEGER,
    biography TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create albums table
CREATE TABLE albums (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    artist_id INTEGER REFERENCES artists(artist_id) ON DELETE CASCADE,
    genre_id INTEGER REFERENCES genres(genre_id),
    release_date DATE,
    total_tracks INTEGER,
    duration_minutes INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create songs table
CREATE TABLE songs (
    song_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    album_id INTEGER REFERENCES albums(album_id) ON DELETE CASCADE,
    artist_id INTEGER REFERENCES artists(artist_id) ON DELETE CASCADE,
    genre_id INTEGER REFERENCES genres(genre_id),
    duration_seconds INTEGER NOT NULL,
    track_number INTEGER,
    play_count BIGINT DEFAULT 0,
    release_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create users table
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50),
    premium_subscriber BOOLEAN DEFAULT FALSE,
    registration_date DATE DEFAULT CURRENT_DATE,
    last_login TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create playlists table
CREATE TABLE playlists (
    playlist_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    user_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
    is_public BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create playlist_songs junction table
CREATE TABLE playlist_songs (
    playlist_id INTEGER REFERENCES playlists(playlist_id) ON DELETE CASCADE,
    song_id INTEGER REFERENCES songs(song_id) ON DELETE CASCADE,
    position INTEGER NOT NULL,
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (playlist_id, song_id)
);

-- Create listening_history table
CREATE TABLE listening_history (
    history_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id) ON DELETE CASCADE,
    song_id INTEGER REFERENCES songs(song_id) ON DELETE CASCADE,
    listened_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    duration_listened_seconds INTEGER,
    completed BOOLEAN DEFAULT FALSE
);

-- Create indexes for better query performance
CREATE INDEX idx_songs_artist_id ON songs(artist_id);
CREATE INDEX idx_songs_album_id ON songs(album_id);
CREATE INDEX idx_songs_genre_id ON songs(genre_id);
CREATE INDEX idx_albums_artist_id ON albums(artist_id);
CREATE INDEX idx_listening_history_user_id ON listening_history(user_id);
CREATE INDEX idx_listening_history_song_id ON listening_history(song_id);
CREATE INDEX idx_listening_history_listened_at ON listening_history(listened_at);
CREATE INDEX idx_playlists_user_id ON playlists(user_id);
