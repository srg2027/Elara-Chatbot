function loginValidation() {
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value.trim();

    // Email validation
    if (email === "" || !email.includes("@")) {
        alert('Invalid email address!!');
        
    }

    // Password validation
    if (password === "") {
        alert('Password cannot be empty!!');
         // Optional, just for clarity
    }

    // If everything is correct, allow form submission
 }
