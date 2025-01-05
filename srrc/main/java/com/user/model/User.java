package com.user.model;
import java.util.*;
class User {
    private String sessionId;          // Unique session ID for the user
    private String customerId;         // Unique customer ID
    private List<UserMessage> messages; // List to store user messages
    private String status;  

    // Constructor that initializes the list of messages
    public User(String customerId) {
        this.sessionId = UUID.randomUUID().toString(); // Generate a random session ID
        this.customerId = customerId;
        this.status = "Active"; // Default status is Active
        this.messages = new ArrayList<>(); // Initialize the list to hold messages
    }

    // Getter and Setter methods
    public String getSessionId() {
        return sessionId;
    }

    public String getCustomerId() {
        return customerId;
    }

    public List<UserMessage> getMessages() {
        return messages;
    }

    public void setMessages(List<UserMessage> messages) {
        this.messages = messages;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    // Add a message to the session
    public void addMessage(UserMessage message) {
        this.messages.add(message); // Now this should work without any error
    }
}

class UserMessage {
    private String content;
    private Date timestamp;

    public UserMessage(String content, Date timestamp) {
        this.content = content;
        this.timestamp = timestamp;
    }

    public String getContent() {
        return content;
    }

    public Date getTimestamp() {
        return timestamp;
    }
}
