<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Student Registration</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <style>
    body {
      background: linear-gradient(to right, #f8f9fa, #e0eafc);
    }

    .bg-card {
      background: white;
      border-radius: 15px;
    }

    .form-title {
      font-size: 2.2rem;
      font-weight: bold;
      color: #ff7b00;
      text-shadow: 1px 1px 1px #333;
    }

    .form-subtitle {
      font-size: 1.5rem;
      color: #212529;
      text-shadow: 1px 1px 1px #fff;
    }
  </style>
</head>

<%@ include file="navbar.jsp" %>

<body>

<div class="container mt-5">
  <div class="card shadow-lg bg-card w-100 w-md-75 w-lg-50 mx-auto p-4">
    <h3 class="text-center mb-4 form-title" style="font-size: 2.5rem; color: #143a40;">
  Student Registration System
</h3>

    <form method="post" action="add">
      <div class="mb-3">
        <label for="name" class="form-label">Full Name</label>
        <input type="text" class="form-control" name="name" required>
      </div>

      <div class="mb-3">
        <label for="email" class="form-label">Email Address</label>
        <input type="email" class="form-control" name="email" required>
      </div>

      <div class="mb-3">
        <label for="mobile" class="form-label">Mobile Number</label>
        <input type="text" class="form-control" name="mobile" pattern="[0-9]{10}" maxlength="10" required>
      </div>

      <div class="mb-3">
        <label for="course" class="form-label">Select Course</label>
        <select class="form-select" name="course" required>
          <option selected disabled value="">Choose...</option>
          <option>Java Full Stack</option>
          <option>Web Development</option>
          <option>Data Science</option>
          <option>Cloud Computing</option>
        </select>
      </div>

      <div class="mb-3">
        <label class="form-label">Gender</label><br>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" value="Male" required>
          <label class="form-check-label">Male</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" value="Female">
          <label class="form-check-label">Female</label>
        </div>
      </div>

      <div class="mb-3">
        <label for="address" class="form-label">Address</label>
        <textarea class="form-control" name="address" rows="3" required></textarea>
      </div>

      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" name="password" required minlength="6">
      </div>

      <button type="submit" class="btn btn-primary w-100 py-2">Submit Details</button>
    </form>
  </div>
</div>

<!-- JavaScript Alert -->
<%
    String msg = request.getParameter("msg");
    if ("success".equals(msg)) {
%>
    <script>
        alert('Data submitted successfully!');
    </script>
<%
    }
%>

</body>

<%@ include file="footer.jsp" %>
</html>
