<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Contact Us</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

  <style>
    body {
      background-color: #f0f4f8; /* Same as other pages */
    }

    .page-title {
      font-size: 2.2rem;
      font-weight: bold;
      text-align: center;
      margin: 40px 0 20px 0;
    }

    .highlight-orange {
      color: #fd7e14;
      text-shadow: 1px 1px 2px black;
    }

    .highlight-dark {
      color: #212529;
      text-shadow: 1px 1px 2px white;
    }

    .card-style {
      background: white;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }

    .form-label i {
      color: #0d6efd;
    }

    @media (max-width: 768px) {
      .page-title {
        font-size: 1.6rem;
      }
    }
  </style>
</head>
<body style="background: linear-gradient(to right, #f8f9fa, #e0eafc);">
  <%@ include file="navbar.jsp" %>

  <!-- Page Title -->
  <h2 class="page-title">
    <span class="highlight-dark">Contact</span>
    <span class="highlight-dark">Us</span>
  </h2>

  <div class="container mb-5">
    <div class="row justify-content-center">
      <div class="col-md-8 card-style">
        <form>
          <div class="mb-3">
            <label class="form-label"><i class="bi bi-person-fill me-2"></i>Your Name</label>
            <input type="text" class="form-control" name="name" placeholder="Enter full name" required>
          </div>
          <div class="mb-3">
            <label class="form-label"><i class="bi bi-envelope-fill me-2"></i>Email address</label>
            <input type="email" class="form-control" name="email" placeholder="Enter email" required>
          </div>
          <div class="mb-3">
            <label class="form-label"><i class="bi bi-chat-left-text-fill me-2"></i>Message</label>
            <textarea class="form-control" name="message" rows="5" placeholder="Your message here" required></textarea>
          </div>
          <button type="submit" class="btn btn-primary w-100">Send Message</button>
        </form>
      </div>
    </div>
  </div>

  <%@ include file="footer.jsp" %>

  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const form = document.querySelector("form");
      form.addEventListener("submit", function (e) {
        e.preventDefault();
        alert("Your message has been sent successfully!");
        form.reset();
      });
    });
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
