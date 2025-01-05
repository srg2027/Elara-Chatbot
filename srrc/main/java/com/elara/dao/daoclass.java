
package com.elara.dao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class daoclass {
    private String jdbcURL = "jdbc:mysql://localhost:30006/Elara";
    private String jdbcUserName = "root";
    private String jdbcPassword = "root";

    private static final String INSERT_USER_SQL = "INSERT INTO ElaraUser (sessionId, customerId, status) VALUES (?, ?, ?);";
    private static final String SELECT_USER_BY_ID = "SELECT * FROM ElaraUser WHERE customerId = ?";
    private static final String SELECT_ALL_USERS = "SELECT * FROM ElaraUser";
    private static final String DELETE_USER_SQL = "DELETE FROM ElaraUser WHERE customerId = ?";
    private static final String UPDATE_USER_SQL = "UPDATE ElaraUser SET status = ? WHERE customerId = ?;";

    public daoclass() {}

    // Establish a connection to the database
    protected Connection getConnection() {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(jdbcURL, jdbcUserName, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    // Insert a new ElaraUser
    public void insertUser(ElaraUser user) throws SQLException {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {
            preparedStatement.setString(1, user.getSessionId());
            preparedStatement.setString(2, user.getCustomerId());
            preparedStatement.setString(3, user.getStatus());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private String getSessionId() {
		// TODO Auto-generated method stub
		return null;
	}

	private String getStatus() {
		// TODO Auto-generated method stub
		return null;
	}

	private String getCustomerId() {
		// TODO Auto-generated method stub
		return null;
	}

	// Select a user by ID
    public ElaraUser selectUser(String customerId) {
        ElaraUser user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID)) {
            preparedStatement.setString(1, customerId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                String sessionId = rs.getString("sessionId");
                String status = rs.getString("status");
                user = new ElaraUser();
                user.setStatus(status);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    // Select all users
    public List<ElaraUser> selectAllUsers() {
        List<ElaraUser> users = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)) {
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String customerId = rs.getString("customerId");
                String status = rs.getString("status");
                ElaraUser user = new ElaraUser();
                user.setStatus(status);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }

    private void setStatus(String status) {
		// TODO Auto-generated method stub
		
	}

	// Update user's status
    public boolean updateUser(ElaraUser user) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER_SQL)) {
            preparedStatement.setString(1, user.getStatus());
            preparedStatement.setString(2, user.getCustomerId());
            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    // Delete a user by ID
    public boolean deleteUser(String customerId) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER_SQL)) {
            preparedStatement.setString(1, customerId);
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }
}