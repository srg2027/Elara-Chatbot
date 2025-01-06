<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Submit Ticket</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h3>Submit a Support Ticket</h3>

        <form action="SubmitTicketServlet" method="post">

            <!-- Subject input -->
            <div class="mb-3">
                <label for="subject" class="form-label">Ticket Subject</label>
                <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter the subject of your ticket" required>
            </div>

            <!-- Description input -->
            <div class="mb-3">
                <label for="description" class="form-label">Ticket Description</label>
                <textarea class="form-control" id="description" name="description" rows="4" placeholder="Provide details about the issue you're facing" required></textarea>
            </div>

            <!-- Submit button -->
            <div class="mb-3">
                <button type="submit" class="btn btn-primary">Submit Ticket</button>
            </div>

        </form>
        
        <a href="index.jsp" class="btn btn-secondary">Back to Dash board</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
