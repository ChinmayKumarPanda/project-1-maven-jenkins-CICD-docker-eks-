<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Netflix Signup</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
      background: url("https://assets.nflxext.com/ffe/siteui/vlv3/7c0b8f08-04c0-4d42-9234-ec7e7c9ef26e/fab0a62c-3b48-40da-bd8e-8f65b2f9bafb/IN-en-20240916-popsignuptwoweeks-perspective_alpha_website_large.jpg")
        no-repeat center center/cover;
      height: 100vh;
      color: white;
    }

    .overlay {
      background: rgba(0, 0, 0, 0.7);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .signup-box {
      background: rgba(0, 0, 0, 0.75);
      padding: 40px;
      border-radius: 8px;
      width: 320px;
      text-align: center;
    }

    .signup-box h1 {
      color: #e50914;
      margin-bottom: 20px;
    }

    .signup-box input {
      width: 100%;
      padding: 12px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      outline: none;
    }

    .signup-box button {
      width: 100%;
      padding: 12px;
      margin-top: 15px;
      background: #e50914;
      border: none;
      border-radius: 4px;
      color: white;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: background 0.3s;
    }

    .signup-box button:hover {
      background: #f6121d;
    }

    .signup-box p {
      margin-top: 15px;
      font-size: 14px;
      color: #aaa;
    }

    .signup-box a {
      color: white;
      text-decoration: none;
      font-weight: bold;
    }

    .signup-box a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="overlay">
    <div class="signup-box">
      <h1>Sign Up</h1>
      <form action="signup.php" method="post">
        <input type="text" placeholder="Full Name" name="fullname" required />
        <input type="email" placeholder="Email Address" name="email" required />
        <input type="password" placeholder="Password" name="password" required />
        <button type="submit">Get Started</button>
      </form>
      <p>Already have an account? <a href="login.html">Sign In</a></p>
    </div>
  </div>
</body>
</html>
