# Music Streaming Database - SQL Exercises

## Database Overview
You are working with a music streaming platform database similar to Spotify. The database contains information about artists, albums, songs, users, playlists, and listening history.

### Tables:
- **genres**: Music genres (Rock, Pop, Hip Hop, etc.)
- **artists**: Music artists and bands
- **albums**: Music albums
- **songs**: Individual tracks
- **users**: Platform users
- **playlists**: User-created playlists
- **playlist_songs**: Songs in playlists (many-to-many)
- **listening_history**: User listening activity

---

## Exercise 1: Basic Data Exploration (Beginner)
**Goal**: Get familiar with the database structure and basic SELECT statements.

1. **List all genres**: Write a query to show all available music genres.
2. **Count total songs**: How many songs are in the database?
3. **Show recent users**: List the 5 most recently registered users.

**Sample Solution for #1**:
```sql
SELECT * FROM genres ORDER BY name;
```

---

## Exercise 2: Filtering and Sorting (Beginner)
**Goal**: Practice WHERE clauses and ORDER BY.

1. **Premium users only**: Find all premium subscribers, sorted by registration date.
2. **Long songs**: Find all songs longer than 5 minutes (300 seconds).
3. **Recent releases**: Show albums released in 2023, ordered by release date.

---

## Exercise 3: Basic Aggregations (Beginner-Intermediate)
**Goal**: Learn COUNT, SUM, AVG, MIN, MAX functions.

1. **Genre popularity**: Count how many songs exist for each genre.
2. **Average song length**: What's the average duration of songs in seconds?
3. **Most productive artist**: Which artist has released the most albums?

---

## Exercise 4: Introduction to JOINs (Intermediate)
**Goal**: Combine data from multiple tables.

1. **Songs with artist names**: List all songs with their artist names (not just artist_id).
2. **Albums with genres**: Show album titles with their genre names.
3. **Complete song info**: Display song title, artist name, album title, and genre name for all songs.

**Sample Solution for #1**:
```sql
SELECT s.title as song_title, a.name as artist_name
FROM songs s
JOIN artists a ON s.artist_id = a.artist_id
ORDER BY a.name, s.title;
```

---

## Exercise 5: Advanced Filtering (Intermediate)
**Goal**: Complex WHERE conditions and subqueries.

1. **Popular rock songs**: Find rock songs with more than 200,000 plays.
2. **Active users**: Find users who have listened to music in the last 7 days.
3. **Prolific artists**: Find artists who have more than 10 songs in the database.

---

## Exercise 6: Aggregation with GROUP BY (Intermediate)
**Goal**: Group data and calculate statistics.

1. **Listening time by user**: Calculate total listening time for each user.
2. **Songs per album**: Show each album with its actual song count.
3. **Country music stats**: How many artists, albums, and songs are there for each country of origin?

---

## Exercise 7: Advanced JOINs (Intermediate-Advanced)
**Goal**: Master different types of joins and complex relationships.

1. **Playlist analysis**: Show each playlist with the number of songs and total duration.
2. **User music preferences**: For each user, show their most listened-to genre.
3. **Complete listening session**: Show user name, song title, artist name, and listening date for all listening history.

---

## Exercise 8: Window Functions (Advanced)
**Goal**: Learn ranking and analytical functions.

1. **Top songs per genre**: Rank songs by play count within each genre (show top 3 per genre).
2. **User listening streaks**: Calculate running total of listening time for each user over time.
3. **Album popularity trends**: Show each album's rank by total play count of all its songs.

**Sample Solution for #1**:
```sql
SELECT genre_name, song_title, artist_name, play_count, rank
FROM (
    SELECT 
        g.name as genre_name,
        s.title as song_title,
        a.name as artist_name,
        s.play_count,
        ROW_NUMBER() OVER (PARTITION BY g.genre_id ORDER BY s.play_count DESC) as rank
    FROM songs s
    JOIN artists a ON s.artist_id = a.artist_id
    JOIN genres g ON s.genre_id = g.genre_id
) ranked
WHERE rank <= 3
ORDER BY genre_name, rank;
```

---

## Exercise 9: Complex Business Queries (Advanced)
**Goal**: Solve real-world business problems.

1. **User engagement analysis**: 
   - Find users who have listened to music for more than 2 hours total
   - Show their listening time and percentage of completed songs

2. **Artist revenue potential**: 
   - Calculate potential revenue per artist assuming $0.01 per play
   - Include only artists with more than 50,000 total plays

3. **Playlist engagement**: 
   - Find playlists that have been created but never had any songs added
   - Also find playlists where songs have been added but never played

---

## Exercise 10: Date and Time Analysis (Advanced)
**Goal**: Work with temporal data and patterns.

1. **Peak listening hours**: What are the most popular hours of the day for music listening?
2. **Weekly listening patterns**: Show total listening time by day of the week.
3. **User retention**: How many users listened to music both yesterday and today?

---

## Exercise 11: Subqueries and CTEs (Advanced)
**Goal**: Use Common Table Expressions and nested queries.

1. **Above-average albums**: Find albums that have above-average total play counts.
2. **User music diversity**: 
   - Using a CTE, find users who have listened to songs from at least 5 different genres
   - Show user name and the count of genres they've listened to

3. **Popular but short songs**: Find songs that are shorter than average but have above-average play counts.

---

## Exercise 12: Advanced Analytics (Expert)
**Goal**: Complex analytical queries for business insights.

1. **User segmentation**: 
   - Segment users into categories: Heavy (>20 songs), Medium (5-20 songs), Light (1-4 songs), Inactive (0 songs) based on their listening history
   - Show count of users in each segment

2. **Genre recommendation engine**: 
   - For each user, suggest a genre they haven't listened to yet but is popular among users with similar listening patterns

3. **Churn analysis**: 
   - Identify users at risk of churning (haven't listened in 30+ days but were previously active)
   - Calculate their previous engagement metrics

---

## Exercise 13: Performance and Optimization (Expert)
**Goal**: Understand query performance and optimization.

1. **Query optimization**: 
   - Write a query to find the most played song by each artist
   - Then optimize it using indexes and explain the execution plan

2. **Data consistency check**: 
   - Write queries to verify data integrity (e.g., ensure all songs belong to existing albums)

---

## Exercise 14: Data Modification (Intermediate)
**Goal**: Practice INSERT, UPDATE, DELETE operations.

1. **Add new data**: 
   - Insert a new artist, album, and 3 songs for that artist
   - Create a playlist and add some of these new songs to it

2. **Update play counts**: 
   - Simulate a listening session by updating play counts and adding listening history records

3. **Clean up data**: 
   - Remove all songs that have never been played (play_count = 0)

---

## Exercise 15: Advanced Reporting (Expert)
**Goal**: Create comprehensive business reports.

1. **Monthly music report**: 
   - Create a comprehensive report showing:
     - Top 10 most played songs this month
     - Most active users (by listening time)
     - Genre distribution of plays
     - Premium vs free user engagement comparison

2. **Artist performance dashboard**: 
   - For each artist, calculate:
     - Total plays across all songs
     - Average song rating (based on completion rate)
     - Number of unique listeners
     - Revenue potential (plays × $0.01)
   - Rank artists by overall performance

---

## Bonus Challenge: Create Your Own Insights
Think like a data analyst at a music streaming company. What questions would you want to answer? Create 3 of your own queries that could provide valuable business insights.

Some ideas to get you started:
- What makes a song popular?
- How do user preferences differ by country?
- What's the optimal playlist length?
- Which artists have the most loyal fanbase?
- How does music taste evolve over time?

---

## Difficulty Progression:
- **Exercises 1-3**: Basic SQL fundamentals
- **Exercises 4-6**: Joins and grouping
- **Exercises 7-9**: Advanced joins and business logic
- **Exercises 10-12**: Complex analytics and CTEs
- **Exercises 13-15**: Performance and real-world applications

## Tips for Success:
1. Start simple and build complexity gradually
2. Always check your results - do they make sense?
3. Use LIMIT when testing to avoid overwhelming output
4. Comment your queries to explain your logic
5. Try multiple approaches to solve the same problem
