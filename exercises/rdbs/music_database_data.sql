-- Sample Data for Music Streaming Platform Database
-- Created for Database Technology Training Program

-- Insert genres
INSERT INTO genres (name, description) VALUES
('Rock', 'Rock music characterized by strong rhythm, simple melodies'),
('Pop', 'Popular music with catchy melodies and mainstream appeal'),
('Hip Hop', 'Music featuring rhythmic speaking over strong beats'),
('Electronic', 'Music created using electronic instruments and technology'),
('Jazz', 'Improvised music with swing rhythms and blue notes'),
('Classical', 'Traditional orchestral and chamber music'),
('Country', 'Folk music from rural American South'),
('R&B', 'Rhythm and blues with soulful vocals'),
('Indie', 'Independent music outside mainstream commercial appeal'),
('Alternative', 'Non-commercial rock music with experimental elements');

-- Insert artists
INSERT INTO artists (name, country, formed_year, biography) VALUES
('The Electric Waves', 'United States', 2018, 'Indie rock band from Portland known for atmospheric soundscapes'),
('Luna Martinez', 'Spain', 2020, 'Pop singer-songwriter with Latin influences'),
('Midnight Collective', 'United Kingdom', 2015, 'Electronic music duo creating ambient and dance tracks'),
('Jazz Fusion Project', 'United States', 2010, 'Contemporary jazz ensemble pushing genre boundaries'),
('The Vintage Sound', 'United States', 2012, 'Rock band inspired by 70s classic rock'),
('Digital Dreams', 'Germany', 2019, 'Electronic music producer specializing in synthwave'),
('Country Roads Band', 'United States', 2005, 'Traditional country music with modern storytelling'),
('Soulful Echoes', 'United States', 2017, 'R&B group with gospel influences'),
('Arctic Winds', 'Canada', 2016, 'Alternative rock band with post-rock elements'),
('Classical Ensemble Modern', 'Austria', 2000, 'Contemporary classical music group'),
('Urban Beats Collective', 'United States', 2021, 'Hip hop collective from Atlanta'),
('Indie Folk Travelers', 'United States', 2014, 'Folk indie band with storytelling focus'),
('Retro Wave', 'France', 2018, 'Synthwave and retrowave electronic music'),
('Mountain Echo', 'United States', 2013, 'Country rock with bluegrass influences'),
('Neo Soul Society', 'United Kingdom', 2019, 'Modern R&B with neo-soul elements');

-- Insert albums
INSERT INTO albums (title, artist_id, genre_id, release_date, total_tracks, duration_minutes) VALUES
('Neon Nights', 1, 9, '2023-03-15', 12, 45),
('Corazón Electrónico', 2, 2, '2023-06-20', 10, 38),
('Pulse', 3, 4, '2022-11-10', 8, 52),
('Improvisations Vol. 1', 4, 5, '2023-01-25', 6, 71),
('Thunder Road', 5, 1, '2022-08-14', 11, 48),
('Synthscape', 6, 4, '2023-04-30', 9, 41),
('Small Town Stories', 7, 7, '2022-12-05', 13, 55),
('Harmony Rising', 8, 8, '2023-02-18', 10, 42),
('Frozen Landscapes', 9, 10, '2023-05-12', 9, 53),
('Modern Classics', 10, 6, '2023-07-08', 7, 85),
('Street Chronicles', 11, 3, '2023-08-01', 14, 49),
('Wandering Paths', 12, 9, '2022-10-22', 11, 46),
('Digital Sunset', 13, 4, '2023-09-15', 10, 44),
('Blue Ridge Morning', 14, 7, '2022-09-30', 12, 51),
('Soul Reflections', 15, 8, '2023-03-08', 9, 39),
('Electric Dreams', 1, 9, '2021-11-20', 10, 43),
('Amor Digital', 2, 2, '2022-04-15', 8, 32),
('Frequencies', 3, 4, '2021-06-18', 12, 67),
('Late Night Sessions', 4, 5, '2022-05-10', 8, 58),
('Highway Anthems', 5, 1, '2021-03-22', 14, 62);

-- Insert songs
INSERT INTO songs (title, album_id, artist_id, genre_id, duration_seconds, track_number, play_count, release_date) VALUES
-- Album 1: Neon Nights
('City Lights', 1, 1, 9, 245, 1, 125430, '2023-03-15'),
('Electric Dreams', 1, 1, 9, 198, 2, 89523, '2023-03-15'),
('Midnight Drive', 1, 1, 9, 276, 3, 156789, '2023-03-15'),
('Neon Pulse', 1, 1, 9, 213, 4, 94512, '2023-03-15'),
('Urban Echoes', 1, 1, 9, 234, 5, 78945, '2023-03-15'),
('Digital Horizon', 1, 1, 9, 289, 6, 112345, '2023-03-15'),
('Chrome Reflections', 1, 1, 9, 201, 7, 67834, '2023-03-15'),
('Synthetic Love', 1, 1, 9, 256, 8, 143567, '2023-03-15'),
('Laser Lights', 1, 1, 9, 187, 9, 56789, '2023-03-15'),
('Future Nostalgia', 1, 1, 9, 312, 10, 98765, '2023-03-15'),
('Binary Stars', 1, 1, 9, 223, 11, 87432, '2023-03-15'),
('Cyber Heart', 1, 1, 9, 267, 12, 134521, '2023-03-15'),

-- Album 2: Corazón Electrónico
('Baila Conmigo', 2, 2, 2, 198, 1, 234567, '2023-06-20'),
('Amor Virtual', 2, 2, 2, 212, 2, 189432, '2023-06-20'),
('Luces de Neon', 2, 2, 2, 187, 3, 167823, '2023-06-20'),
('Corazón Digital', 2, 2, 2, 234, 4, 298765, '2023-06-20'),
('Sueños Eléctricos', 2, 2, 2, 201, 5, 156789, '2023-06-20'),
('Ritmo Infinito', 2, 2, 2, 245, 6, 198432, '2023-06-20'),
('Melodía Futura', 2, 2, 2, 189, 7, 123456, '2023-06-20'),
('Beats del Alma', 2, 2, 2, 267, 8, 245678, '2023-06-20'),
('Conexión', 2, 2, 2, 178, 9, 134521, '2023-06-20'),
('Hasta el Amanecer', 2, 2, 2, 289, 10, 276543, '2023-06-20'),

-- Album 3: Pulse
('Frequency', 3, 3, 4, 387, 1, 98765, '2022-11-10'),
('Bass Drop', 3, 3, 4, 298, 2, 145632, '2022-11-10'),
('Synthesized', 3, 3, 4, 456, 3, 87456, '2022-11-10'),
('Digital Waves', 3, 3, 4, 334, 4, 123789, '2022-11-10'),
('Echo Chamber', 3, 3, 4, 298, 5, 156423, '2022-11-10'),
('Pulse Rhythm', 3, 3, 4, 412, 6, 98234, '2022-11-10'),
('Ambient Flow', 3, 3, 4, 567, 7, 67891, '2022-11-10'),
('Beat Matrix', 3, 3, 4, 345, 8, 134567, '2022-11-10'),

-- Album 4: Improvisations Vol. 1
('Morning Blues', 4, 4, 5, 612, 1, 45632, '2023-01-25'),
('Sax Solo Nights', 4, 4, 5, 789, 2, 67845, '2023-01-25'),
('Piano Reflections', 4, 4, 5, 698, 3, 34567, '2023-01-25'),
('Bass Walking', 4, 4, 5, 534, 4, 56789, '2023-01-25'),
('Trumpet Calls', 4, 4, 5, 445, 5, 23456, '2023-01-25'),
('Drum Conversations', 4, 4, 5, 678, 6, 78912, '2023-01-25'),

-- Album 5: Thunder Road
('Thunder Road', 5, 5, 1, 287, 1, 456789, '2022-08-14'),
('Highway Bound', 5, 5, 1, 234, 2, 234567, '2022-08-14'),
('Electric Guitar', 5, 5, 1, 198, 3, 345678, '2022-08-14'),
('Rock Anthem', 5, 5, 1, 312, 4, 567890, '2022-08-14'),
('Power Chords', 5, 5, 1, 245, 5, 123456, '2022-08-14'),
('Stadium Lights', 5, 5, 1, 356, 6, 298765, '2022-08-14'),
('Amplified', 5, 5, 1, 278, 7, 187654, '2022-08-14'),
('Guitar Hero', 5, 5, 1, 289, 8, 456123, '2022-08-14'),
('Rock Revolution', 5, 5, 1, 334, 9, 234789, '2022-08-14'),
('Final Solo', 5, 5, 1, 387, 10, 345612, '2022-08-14'),
('Encore', 5, 5, 1, 198, 11, 123987, '2022-08-14'),

-- More songs for additional albums...
('Synth Paradise', 6, 6, 4, 267, 1, 89456, '2023-04-30'),
('Retro Future', 6, 6, 4, 234, 2, 67834, '2023-04-30'),
('Neon Highway', 6, 6, 4, 298, 3, 123678, '2023-04-30'),
('Digital Love', 6, 6, 4, 245, 4, 89234, '2023-04-30'),
('Cyber Dreams', 6, 6, 4, 278, 5, 156789, '2023-04-30'),
('Pixel Hearts', 6, 6, 4, 189, 6, 67891, '2023-04-30'),
('Binary Romance', 6, 6, 4, 312, 7, 98456, '2023-04-30'),
('Electric Sunset', 6, 6, 4, 234, 8, 134567, '2023-04-30'),
('Synthwave Dreams', 6, 6, 4, 267, 9, 87234, '2023-04-30'),

-- Country songs
('Small Town Blues', 7, 7, 7, 234, 1, 78945, '2022-12-05'),
('Country Road Home', 7, 7, 7, 267, 2, 156789, '2022-12-05'),
('Pickup Truck', 7, 7, 7, 198, 3, 89456, '2022-12-05'),
('Heartbreak Highway', 7, 7, 7, 289, 4, 234567, '2022-12-05'),
('Sunday Morning', 7, 7, 7, 245, 5, 123456, '2022-12-05'),
('Whiskey Nights', 7, 7, 7, 312, 6, 187654, '2022-12-05'),
('Barn Dance', 7, 7, 7, 178, 7, 98765, '2022-12-05'),
('Mississippi Moon', 7, 7, 7, 256, 8, 145632, '2022-12-05'),
('Country Girl', 7, 7, 7, 223, 9, 67834, '2022-12-05'),
('Backyard BBQ', 7, 7, 7, 234, 10, 234789, '2022-12-05'),
('Hometown Hero', 7, 7, 7, 267, 11, 156423, '2022-12-05'),
('Southern Comfort', 7, 7, 7, 198, 12, 89234, '2022-12-05'),
('Ranch Life', 7, 7, 7, 245, 13, 123789, '2022-12-05'),

-- R&B songs
('Soul Connection', 8, 8, 8, 234, 1, 234567, '2023-02-18'),
('Smooth Operator', 8, 8, 8, 267, 2, 189432, '2023-02-18'),
('Midnight Groove', 8, 8, 8, 198, 3, 156789, '2023-02-18'),
('Velvet Voice', 8, 8, 8, 289, 4, 298765, '2023-02-18'),
('Harmony Dreams', 8, 8, 8, 245, 5, 134567, '2023-02-18'),
('Bass Line Love', 8, 8, 8, 312, 6, 187654, '2023-02-18'),
('Gospel Roots', 8, 8, 8, 278, 7, 98765, '2023-02-18'),
('Soulful Nights', 8, 8, 8, 223, 8, 145632, '2023-02-18'),
('Rhythm Divine', 8, 8, 8, 256, 9, 67834, '2023-02-18'),
('Spirit Rising', 8, 8, 8, 334, 10, 234789, '2023-02-18'),

-- Alternative rock songs
('Arctic Storm', 9, 9, 10, 298, 1, 89456, '2023-05-12'),
('Post Modern Blues', 9, 9, 10, 334, 2, 123678, '2023-05-12'),
('Experimental Phase', 9, 9, 10, 267, 3, 67834, '2023-05-12'),
('Distorted Reality', 9, 9, 10, 389, 4, 156789, '2023-05-12'),
('Alternative Universe', 9, 9, 10, 245, 5, 98234, '2023-05-12'),
('Noise Pollution', 9, 9, 10, 412, 6, 134567, '2023-05-12'),
('Abstract Thoughts', 9, 9, 10, 278, 7, 87456, '2023-05-12'),
('Sonic Exploration', 9, 9, 10, 356, 8, 189432, '2023-05-12'),
('Feedback Loop', 9, 9, 10, 234, 9, 67891, '2023-05-12'),

-- Classical pieces
('Symphony in D Minor', 10, 10, 6, 1456, 1, 23456, '2023-07-08'),
('Chamber Music No. 3', 10, 10, 6, 876, 2, 34567, '2023-07-08'),
('Modern Sonata', 10, 10, 6, 1234, 3, 12345, '2023-07-08'),
('Orchestral Suite', 10, 10, 6, 1678, 4, 45678, '2023-07-08'),
('String Quartet', 10, 10, 6, 987, 5, 23789, '2023-07-08'),
('Piano Concerto', 10, 10, 6, 1345, 6, 56789, '2023-07-08'),
('Contemporary Variations', 10, 10, 6, 1123, 7, 34512, '2023-07-08'),

-- Hip hop songs
('City Hustle', 11, 11, 3, 234, 1, 456789, '2023-08-01'),
('Underground King', 11, 11, 3, 198, 2, 234567, '2023-08-01'),
('Beats and Rhymes', 11, 11, 3, 267, 3, 345678, '2023-08-01'),
('Street Wisdom', 11, 11, 3, 289, 4, 567890, '2023-08-01'),
('Flow State', 11, 11, 3, 245, 5, 189432, '2023-08-01'),
('Mic Check', 11, 11, 3, 178, 6, 123456, '2023-08-01'),
('Lyrical Genius', 11, 11, 3, 312, 7, 298765, '2023-08-01'),
('Bass Heavy', 11, 11, 3, 256, 8, 156789, '2023-08-01'),
('Freestyle Friday', 11, 11, 3, 234, 9, 87654, '2023-08-01'),
('Atlanta Nights', 11, 11, 3, 298, 10, 234789, '2023-08-01'),
('Collective Power', 11, 11, 3, 267, 11, 145632, '2023-08-01'),
('Hip Hop Legacy', 11, 11, 3, 334, 12, 98234, '2023-08-01'),
('Turntable Magic', 11, 11, 3, 278, 13, 67891, '2023-08-01'),
('Street Chronicles', 11, 11, 3, 345, 14, 189765, '2023-08-01');

-- Insert users
INSERT INTO users (username, email, first_name, last_name, country, premium_subscriber, registration_date, last_login) VALUES
('musiclover123', 'john.doe@email.com', 'John', 'Doe', 'United States', TRUE, '2023-01-15', '2023-08-24 14:30:00'),
('rockfan_sarah', 'sarah.wilson@email.com', 'Sarah', 'Wilson', 'Canada', FALSE, '2023-02-20', '2023-08-23 09:15:00'),
('jazzmaster_mike', 'mike.johnson@email.com', 'Mike', 'Johnson', 'United Kingdom', TRUE, '2022-11-10', '2023-08-24 16:45:00'),
('pop_princess', 'emma.davis@email.com', 'Emma', 'Davis', 'Australia', TRUE, '2023-03-05', '2023-08-24 11:20:00'),
('electronic_beats', 'alex.brown@email.com', 'Alex', 'Brown', 'Germany', FALSE, '2023-04-12', '2023-08-22 20:30:00'),
('country_soul', 'lisa.miller@email.com', 'Lisa', 'Miller', 'United States', TRUE, '2022-12-08', '2023-08-24 08:45:00'),
('indie_explorer', 'david.taylor@email.com', 'David', 'Taylor', 'United States', FALSE, '2023-05-18', '2023-08-23 15:20:00'),
('classical_fan', 'maria.garcia@email.com', 'Maria', 'Garcia', 'Spain', TRUE, '2023-01-30', '2023-08-24 12:10:00'),
('hiphop_head', 'james.lee@email.com', 'James', 'Lee', 'United States', FALSE, '2023-06-25', '2023-08-24 19:30:00'),
('rnb_soul', 'nicole.white@email.com', 'Nicole', 'White', 'United States', TRUE, '2023-02-14', '2023-08-24 13:45:00'),
('alt_rock_fan', 'chris.anderson@email.com', 'Chris', 'Anderson', 'Canada', FALSE, '2022-10-22', '2023-08-23 10:30:00'),
('synth_wave', 'anna.martin@email.com', 'Anna', 'Martin', 'France', TRUE, '2023-07-03', '2023-08-24 17:15:00'),
('folk_wanderer', 'tom.clark@email.com', 'Tom', 'Clark', 'United States', FALSE, '2023-03-28', '2023-08-22 14:20:00'),
('beats_lover', 'kelly.rodriguez@email.com', 'Kelly', 'Rodriguez', 'Mexico', TRUE, '2023-04-15', '2023-08-24 09:30:00'),
('music_student', 'ryan.thompson@email.com', 'Ryan', 'Thompson', 'United States', FALSE, '2023-08-01', '2023-08-24 16:00:00');

-- Insert playlists
INSERT INTO playlists (name, description, user_id, is_public) VALUES
('My Workout Mix', 'High energy songs for gym sessions', 1, TRUE),
('Chill Vibes', 'Relaxing music for studying', 2, TRUE),
('Road Trip Classics', 'Perfect songs for long drives', 3, TRUE),
('Late Night Jazz', 'Smooth jazz for evening relaxation', 4, FALSE),
('Electronic Dreams', 'Best electronic tracks', 5, TRUE),
('Country Favorites', 'Top country hits', 6, TRUE),
('Indie Discoveries', 'Hidden indie gems', 7, TRUE),
('Classical Masterpieces', 'Timeless classical music', 8, TRUE),
('Hip Hop Bangers', 'Hard hitting hip hop tracks', 9, TRUE),
('R&B Smooth', 'Soulful R&B collection', 10, FALSE),
('Alternative Edge', 'Cutting edge alternative rock', 11, TRUE),
('Retro Synthwave', 'Nostalgic synthwave tracks', 12, TRUE),
('Morning Motivation', 'Energizing morning playlist', 1, TRUE),
('Study Focus', 'Concentration music', 2, FALSE),
('Party Mix', 'Songs for celebrations', 3, TRUE);

-- Insert playlist songs
INSERT INTO playlist_songs (playlist_id, song_id, position) VALUES
-- My Workout Mix (High energy)
(1, 1, 1), (1, 15, 2), (1, 25, 3), (1, 35, 4), (1, 45, 5),
(1, 3, 6), (1, 17, 7), (1, 27, 8), (1, 37, 9), (1, 47, 10),

-- Chill Vibes
(2, 6, 1), (2, 36, 2), (2, 46, 3), (2, 56, 4), (2, 9, 5),
(2, 19, 6), (2, 29, 7), (2, 39, 8), (2, 49, 9), (2, 12, 10),

-- Road Trip Classics
(3, 13, 1), (3, 23, 2), (3, 33, 3), (3, 43, 4), (3, 53, 5),
(3, 2, 6), (3, 14, 7), (3, 24, 8), (3, 34, 9), (3, 44, 10),

-- Late Night Jazz
(4, 25, 1), (4, 26, 2), (4, 27, 3), (4, 28, 4), (4, 29, 5),
(4, 30, 6),

-- Electronic Dreams
(5, 13, 1), (5, 14, 2), (5, 15, 3), (5, 16, 4), (5, 17, 5),
(5, 18, 6), (5, 19, 7), (5, 20, 8), (5, 41, 9), (5, 42, 10),

-- Country Favorites
(6, 31, 1), (6, 32, 2), (6, 33, 3), (6, 34, 4), (6, 35, 5),
(6, 36, 6), (6, 37, 7), (6, 38, 8), (6, 39, 9), (6, 40, 10),

-- Hip Hop Bangers
(9, 56, 1), (9, 57, 2), (9, 58, 3), (9, 59, 4), (9, 60, 5),
(9, 61, 6), (9, 62, 7), (9, 63, 8), (9, 64, 9), (9, 65, 10);

-- Insert listening history (realistic listening patterns)
INSERT INTO listening_history (user_id, song_id, listened_at, duration_listened_seconds, completed) VALUES
-- User 1 listening patterns
(1, 1, '2023-08-24 08:30:00', 245, TRUE),
(1, 15, '2023-08-24 08:34:00', 198, TRUE),
(1, 3, '2023-08-24 08:37:00', 150, FALSE),
(1, 25, '2023-08-24 14:20:00', 267, TRUE),
(1, 35, '2023-08-24 14:25:00', 234, TRUE),
(1, 2, '2023-08-23 19:45:00', 198, TRUE),
(1, 6, '2023-08-23 20:30:00', 289, TRUE),
(1, 12, '2023-08-22 09:15:00', 267, TRUE),

-- User 2 listening patterns
(2, 6, '2023-08-24 10:15:00', 289, TRUE),
(2, 36, '2023-08-24 10:20:00', 234, TRUE),
(2, 9, '2023-08-24 10:25:00', 187, TRUE),
(2, 19, '2023-08-23 15:30:00', 312, TRUE),
(2, 29, '2023-08-23 16:45:00', 223, TRUE),
(2, 2, '2023-08-22 11:20:00', 198, TRUE),

-- User 3 listening patterns
(3, 13, '2023-08-24 07:45:00', 234, TRUE),
(3, 23, '2023-08-24 08:00:00', 267, TRUE),
(3, 33, '2023-08-24 08:15:00', 198, TRUE),
(3, 25, '2023-08-23 16:20:00', 612, TRUE),
(3, 26, '2023-08-23 16:35:00', 456, FALSE),

-- User 4 listening patterns (jazz fan)
(4, 25, '2023-08-24 20:00:00', 612, TRUE),
(4, 26, '2023-08-24 20:15:00', 789, TRUE),
(4, 27, '2023-08-24 20:30:00', 698, TRUE),
(4, 28, '2023-08-23 21:45:00', 534, TRUE),
(4, 29, '2023-08-23 22:00:00', 445, TRUE),

-- User 5 listening patterns (electronic fan)
(5, 13, '2023-08-24 16:30:00', 387, TRUE),
(5, 14, '2023-08-24 16:40:00', 298, TRUE),
(5, 15, '2023-08-24 16:45:00', 456, TRUE),
(5, 41, '2023-08-23 18:20:00', 267, TRUE),
(5, 42, '2023-08-23 18:25:00', 234, TRUE),

-- More listening history for other users
(6, 31, '2023-08-24 12:15:00', 234, TRUE),
(6, 32, '2023-08-24 12:20:00', 267, TRUE),
(6, 33, '2023-08-24 12:25:00', 198, TRUE),
(7, 1, '2023-08-24 15:30:00', 245, TRUE),
(7, 2, '2023-08-24 15:35:00', 198, TRUE),
(8, 51, '2023-08-24 11:45:00', 1456, TRUE),
(8, 52, '2023-08-24 12:30:00', 876, TRUE),
(9, 56, '2023-08-24 17:20:00', 234, TRUE),
(9, 57, '2023-08-24 17:25:00', 198, TRUE),
(9, 58, '2023-08-24 17:30:00', 267, TRUE),
(10, 41, '2023-08-24 13:15:00', 234, TRUE),
(10, 42, '2023-08-24 13:20:00', 267, TRUE),

-- Add more recent listening patterns
(1, 4, '2023-08-24 16:45:00', 213, TRUE),
(1, 5, '2023-08-24 16:50:00', 234, TRUE),
(2, 46, '2023-08-24 14:30:00', 245, TRUE),
(3, 43, '2023-08-24 12:45:00', 287, TRUE),
(4, 30, '2023-08-24 21:15:00', 678, TRUE),
(5, 16, '2023-08-24 18:30:00', 334, TRUE),
(6, 34, '2023-08-24 15:45:00', 289, TRUE),
(7, 7, '2023-08-24 17:30:00', 201, TRUE),
(8, 53, '2023-08-24 14:20:00', 1234, TRUE),
(9, 59, '2023-08-24 19:45:00', 289, TRUE),
(10, 43, '2023-08-24 16:15:00', 234, TRUE),
(11, 48, '2023-08-24 13:30:00', 298, TRUE),
(12, 44, '2023-08-24 11:45:00', 267, TRUE),
(13, 8, '2023-08-24 10:30:00', 256, TRUE),
(14, 21, '2023-08-24 12:15:00', 212, TRUE),
(15, 11, '2023-08-24 14:45:00', 223, TRUE);

-- Update play counts based on listening history
UPDATE songs SET play_count = play_count + (
    SELECT COUNT(*) FROM listening_history WHERE listening_history.song_id = songs.song_id
);
