<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div class="container mt-5">
        <h3>User List</h3>

        <!-- Add User Form -->
        <form action="addUser" method="POST" class="mb-4">
            <h5>Add New User</h5>
            <div class="row mb-3">
                <div class="col-md-3">
                    <label for="addName" class="form-label">Name</label>
                    <input type="text" class="form-control" id="addName" name="name" placeholder="Enter name" required>
                </div>
                <div class="col-md-3">
                    <label for="addEmail" class="form-label">Email</label>
                    <input type="email" class="form-control" id="addEmail" name="email" placeholder="Enter email" required>
                </div>
                <div class="col-md-3">
                    <label for="addDOB" class="form-label">DOB</label>
                    <input type="text" class="form-control" id="adddob" name="dob" placeholder="Enter dob" required>
                </div>
                <div class="col-md-3">
                    <label for="addpassword" class="form-label">password</label>
                    <input type="text" class="form-control" id="password" name="password" placeholder="Enter password" required>
                </div>
                <div class="col-md-3">
                    <label for="confirm password" class="form-label">confirm password</label>
                    <input type="text" class="form-control" id="confirm password" name="dob" placeholder="confirm password" required>
                </div>
                <div class="col-md-3">
                    <label class="form-label">&nbsp;</label>
                    <button type="submit" class="btn btn-success w-100">Add User</button>
                </div>
            </div>
        </form>

        <!-- User List Table -->
        <table class="table table-bordered table-hover">
            <thead class="table-dark">
                <tr>
                    <th>Name</th>
                    <th>email</th>
                    <th>DOB</th>
                    <th>password</th>
                    <th>confirm password</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through user list -->
                <c:forEach var="user" items="${userList}">
                    <tr>
                        <td>${user.Name}</td>
                        <td>${user.email}</td>
                        <td>${user.password}</td>
                        <td>${user.confirm password}</td>
                        <td>
                            <!-- Edit Form -->
                            <form action="editUser" method="POST" class="d-inline">
                                <input type="hidden" name="id" value="${user.Name}">
                                <input type="hidden" name="name" value="${user.email}">
                                <input type="hidden" name="email" value="${user.password}">
                                <input type="hidden" name="role" value="${user.confirm password}">
                                <button type="submit" class="btn btn-primary btn-sm">Edit</button>
                            </form>
                            <!-- Delete Form -->
                            <form action="deleteUser" method="POST" class="d-inline">
                                <input type="hidden" name="id" value="${user.Name}">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
