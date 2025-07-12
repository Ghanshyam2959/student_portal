<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Navbar</title>
<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
  .navbar-custom {
    background: linear-gradient(to right, #e0f7fa, #fce4ec);
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
  }

  .navbar-brand span {
    font-size: 1.5rem;
    font-weight: bold;
  }

  .nav-link {
    font-weight: 500;
    color: #000 !important;
    transition: color 0.3s;
  }

  .nav-link:hover {
    color: #ff5722 !important;
  }

  .navbar-toggler {
    border-color: rgba(0, 0, 0, 0.1);
  }

  .navbar-nav .active {
    color: #007bff !important;
  }
</style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-light navbar-custom">
  <div class="container-fluid">
  <a class="navbar-brand d-flex align-items-center" href="#" style="gap: 10px;">
  <img src="https://cdn-icons-png.flaticon.com/512/190/190411.png" alt="Student Logo" width="36" height="36" class="shadow-sm">
  <span style="font-size: 1.4rem; font-weight: 600; color: #333;">
    Student Portal
  </span>
</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto gap-3">
        <li class="nav-item">
          <a class="nav-link active" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="test.jsp">Dashboard</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cont.jsp">Contact Us</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
