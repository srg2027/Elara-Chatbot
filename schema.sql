-- Create Users Table
create database Elara;
use Elara;
CREATE TABLE Users (
    user_id CHAR(36) PRIMARY KEY,
    email VARCHAR(255) UNIQUE,
    name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_seen TIMESTAMP,
    language VARCHAR(20),
    phone_number VARCHAR(20)
);

-- Create Sessions Table
CREATE TABLE Sessions (
    session_id CHAR(36) PRIMARY KEY,
    user_id CHAR(36),
    start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_time TIMESTAMP,
    status ENUM('active', 'closed') DEFAULT 'active',
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Create Messages Table
CREATE TABLE Messages (
    message_id CHAR(36) PRIMARY KEY,
    session_id CHAR(36),
    sender_type ENUM('user', 'bot') NOT NULL,
    message_text TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    average_response_time TIME,
    intent VARCHAR(100),
    entities JSON,
    FOREIGN KEY (session_id) REFERENCES Sessions(session_id)
);

-- Create Responses Table
CREATE TABLE Responses (
    response_id CHAR(36) PRIMARY KEY,
    message_id CHAR(36),
    response_text TEXT,
    confidence_score FLOAT,
    suggested_intent VARCHAR(100),
    FOREIGN KEY (message_id) REFERENCES Messages(message_id)
);

-- Create Feedback Table
CREATE TABLE Feedback (
    feedback_id CHAR(36) PRIMARY KEY,
    message_id CHAR(36),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comments TEXT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (message_id) REFERENCES Messages(message_id)
);

-- Create Intent Training Table
CREATE TABLE IntentTraining (
    intent_id CHAR(36) PRIMARY KEY,
    intent_name VARCHAR(100) UNIQUE NOT NULL,
    example_phrases JSON,
    description TEXT,
    last_trained TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Knowledge Base Table
CREATE TABLE KnowledgeBase (
    entry_id CHAR(36) PRIMARY KEY,
    question TEXT,
    answer TEXT,
    category VARCHAR(50),
    keywords JSON,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Analytics Table
CREATE TABLE Analytics (
    analytics_id CHAR(36) PRIMARY KEY,
    session_id CHAR(36),
    total_messages INT,
    average_response_time TIME,
    completion_rate FLOAT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (session_id) REFERENCES Sessions(session_id)
);