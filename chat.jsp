<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Interaction</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h3>Chat with us </h3>
        <div class="chat-box" id="chatBox" style="border: 1px solid #ccc; padding: 10px; max-height: 400px; overflow-y: auto; margin-bottom: 10px;"></div>
        
        <!-- Input box -->
        <div class="mb-3">
            <input type="text" class="form-control" id="userInput" placeholder="Ask a question...">
            <button type="button" class="btn btn-primary mt-2" onclick="sendMessage()">Send</button>
        </div>
    </div>

    <script>
        function sendMessage() {
            var input = document.getElementById("userInput").value;
            var chatBox = document.getElementById("chatBox");

            // Display user's message
            chatBox.innerHTML += "<div><strong>User:</strong> " + input + "</div>";

            // Simulated bot response
            chatBox.innerHTML += "<div><strong>Chatbot:</strong> This is a response from the bot.</div>";

            // Scroll chat to the bottom
            chatBox.scrollTop = chatBox.scrollHeight;

            // Clear input field
            document.getElementById("userInput").value = "";
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>
