# Music Database Setup Guide
## Database Technology Training Program

This guide provides several options for setting up the PostgreSQL music streaming database for your students.

---

## Option 1: Single Shared Database (Recommended for Classroom)

### Setup on Your Mac:

1. **Install PostgreSQL** (if not already installed):
   ```bash
   brew install postgresql
   brew services start postgresql
   ```

2. **Create the database**:
   ```bash
   createdb music_streaming_db
   ```

3. **Set up the schema and data**:
   ```bash
   psql music_streaming_db -f music_database_schema.sql
   psql music_streaming_db -f music_database_data.sql
   ```

4. **Create a training user** (for students to connect):
   ```sql
   psql music_streaming_db -c "
   CREATE USER music_student WITH PASSWORD 'student123';
   GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO music_student;
   GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO music_student;
   "
   ```

5. **Configure PostgreSQL for network access**:
   - Edit `/usr/local/var/postgresql@14/postgresql.conf`:
     ```
     listen_addresses = '*'
     port = 5432
     ```
   - Edit `/usr/local/var/postgresql@14/pg_hba.conf`, add:
     ```
     host    music_streaming_db    music_student    0.0.0.0/0    md5
     ```
   - Restart PostgreSQL:
     ```bash
     brew services restart postgresql
     ```

6. **Find your IP address**:
   ```bash
   ifconfig | grep "inet " | grep -v 127.0.0.1
   ```

### Student Connection:
Students can connect using:
- **Host**: Your Mac's IP address (e.g., 192.168.1.100)
- **Port**: 5432
- **Database**: music_streaming_db
- **Username**: music_student
- **Password**: student123

### Connection Examples:
```bash
# psql command line
psql -h YOUR_IP_ADDRESS -p 5432 -U music_student -d music_streaming_db

# pgAdmin connection
Host: YOUR_IP_ADDRESS
Port: 5432
Database: music_streaming_db
Username: music_student
Password: student123
```

---

## Option 2: Cloud Database (For Distributed Teams)

### Using PostgreSQL on Railway/Render/Heroku:

1. **Create a free PostgreSQL instance** on Railway (railway.app):
   - Sign up and create new project
   - Add PostgreSQL service
   - Note the connection details

2. **Deploy the schema**:
   ```bash
   psql postgresql://username:password@host:port/database -f music_database_schema.sql
   psql postgresql://username:password@host:port/database -f music_database_data.sql
   ```

3. **Share connection details** with students

**Pros**: 
- No network configuration needed
- Works from anywhere
- Automatic backups

**Cons**: 
- Requires internet connection
- Free tiers have limitations

---

## Option 3: Docker Container (Advanced)

### Using Docker for consistent environment:

1. **Create docker-compose.yml**:
   ```yaml
   version: '3.8'
   services:
     postgres:
       image: postgres:15
       environment:
         POSTGRES_DB: music_streaming_db
         POSTGRES_USER: music_student
         POSTGRES_PASSWORD: student123
       ports:
         - "5432:5432"
       volumes:
         - ./music_database_schema.sql:/docker-entrypoint-initdb.d/1-schema.sql
         - ./music_database_data.sql:/docker-entrypoint-initdb.d/2-data.sql
   ```

2. **Start the container**:
   ```bash
   docker-compose up -d
   ```

Students connect to localhost:5432 or your IP:5432

---

## Option 4: Individual Student Databases

### For each student to run locally:

1. **Create setup script** (`student_setup.sh`):
   ```bash
   #!/bin/bash
   echo "Setting up music streaming database..."
   createdb music_streaming_db
   psql music_streaming_db -f music_database_schema.sql
   psql music_streaming_db -f music_database_data.sql
   echo "Database setup complete! Connect with: psql music_streaming_db"
   ```

2. **Students run**:
   ```bash
   chmod +x student_setup.sh
   ./student_setup.sh
   ```

**Pros**: 
- No network issues
- Each student can modify data freely

**Cons**: 
- Requires PostgreSQL on each machine
- Harder to provide consistent support

---

## Recommended Tools for Students

### 1. Command Line (psql)
```bash
psql -h host -U music_student -d music_streaming_db
```

### 2. pgAdmin (GUI)
- Download from: https://www.pgadmin.org/
- Great for visual learners
- Easy to explore database structure

### 3. DBeaver (Free Universal Tool)
- Download from: https://dbeaver.io/
- Supports multiple databases
- Good for beginners

### 4. VS Code Extensions
- PostgreSQL extension
- SQL formatting tools

---

## Classroom Management Tips

### 1. Preparation Checklist:
- [ ] Test database connection from student machines
- [ ] Verify all sample data loaded correctly
- [ ] Prepare backup connection method
- [ ] Have connection details ready to share

### 2. During Class:
- Share connection details via screen/handout
- Start with simple SELECT * queries to verify connections
- Encourage students to explore database structure first
- Have students work in pairs for complex exercises

### 3. Troubleshooting Common Issues:
- **Connection refused**: Check firewall/network settings
- **Permission denied**: Verify user privileges
- **Slow queries**: Use LIMIT for testing large results
- **Syntax errors**: Review PostgreSQL-specific syntax

---

## Exercise Session Structure (Suggested 2-hour session)

### Part 1: Setup & Exploration (20 minutes)
- Connect to database
- Explore table structure
- Exercises 1-2

### Part 2: Basic Queries (30 minutes)
- Exercises 3-4
- Discussion of results

### Break (10 minutes)

### Part 3: Intermediate Queries (30 minutes)
- Exercises 5-7
- Focus on JOINs

### Part 4: Advanced Concepts (25 minutes)
- Exercises 8-9
- Window functions introduction

### Wrap-up (5 minutes)
- Discuss real-world applications
- Preview next session topics

---

## Additional Resources for Students

### PostgreSQL Documentation:
- https://www.postgresql.org/docs/
- https://www.postgresqltutorial.com/

### SQL Practice:
- Students can modify the sample data
- Encourage creative queries beyond the exercises
- Discuss query performance and optimization

### Next Steps:
- Database design principles
- Indexing strategies
- Transaction management
- Stored procedures and functions

---

## Database Statistics
After running the setup, your database will contain:
- **10 genres** of music
- **15 artists** from various countries
- **20 albums** across different genres
- **80+ songs** with realistic metadata
- **15 users** with different preferences
- **15 playlists** with varied content
- **50+ listening history** records for analysis

This provides a rich dataset for students to explore various SQL concepts and real-world scenarios.
