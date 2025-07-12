<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.hibernate.*" %>
<%@ page import="org.hibernate.cfg.*" %>
<%@ page import="s.p.r.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update Data</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    form {
      font-weight: bold;
    }
  </style>
</head>
<%@ include file="navbar.jsp" %>
<body class="bg-secondary bg-opacity-10">

<%
String sid = request.getParameter("id");
if (sid != null) {
    int id = Integer.parseInt(sid);
    Configuration cf = new Configuration().configure();
    SessionFactory sf = cf.buildSessionFactory();
    Session s = sf.openSession();
    s.beginTransaction();
    Student so = (Student) s.get(Student.class, id);
%>

<div class="container w-50 mt-4 p-4 shadow-sm rounded bg-white">
  <div class="card shadow mx-auto bg-img">
   <h3 class="text-center mb-4 color-black" style="margin-top: 20px;">
  <span style="color: orange ;text-shadow: 1px 1px 2px black;">Update</span>
  <span style="color: black ;text-shadow: 1px 1px 2px white;">Student info</span>
</h3>

    <form method="post" action="up" class="color-black ps-5">
      <input type="hidden" name="id" value="<%= so.getId() %>">

      <div class="mb-3">
        <label for="name" class="form-label">Full Name:</label>
        <input type="text" class="form-control" name="name" value="<%= so.getName() %>" required>
      </div>

      <div class="mb-3">
        <label for="email" class="form-label">Email address:</label>
        <input type="email" class="form-control" name="email" value="<%= so.getEmail() %>" required>
      </div>

      <div class="mb-3">
        <label for="mobile" class="form-label">Mobile Number:</label>
        <input type="text" class="form-control" name="mobile" value="<%= so.getMobile() %>" pattern="[0-9]{10}" maxlength="10" required>
      </div>

      <div class="mb-3">
        <label for="course" class="form-label">Select Course:</label>
        <select class="form-select" name="course" required>
          <option disabled value="">Choose...</option>
          <option <%= so.getCourse().equals("Java Full Stack") ? "selected" : "" %>>Java Full Stack</option>
          <option <%= so.getCourse().equals("Web Development") ? "selected" : "" %>>Web Development</option>
          <option <%= so.getCourse().equals("Data Science") ? "selected" : "" %>>Data Science</option>
          <option <%= so.getCourse().equals("Cloud Computing") ? "selected" : "" %>>Cloud Computing</option>
        </select>
      </div>

      <div class="mb-3">
        <label class="form-label d-block">Gender</label>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="male" value="Male" <%= so.getGender().equals("Male") ? "checked" : "" %> required>
          <label class="form-check-label" for="male">Male</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="female" value="Female" <%= so.getGender().equals("Female") ? "checked" : "" %>>
          <label class="form-check-label" for="female">Female</label>
        </div>
      </div>

      <div class="mb-3">
        <label for="address" class="form-label">Address:</label>
        <textarea class="form-control" name="address" rows="3" required><%= so.getAddress() %></textarea><br>
      </div>

     <div class="d-flex justify-content-center">
  <button type="submit" class="btn btn-primary w-75 mb-5">Update</button>
</div>

    </form>
  </div>
</div>

<%
    s.getTransaction().commit();
    s.close();
    sf.close();
} else {
%>
  <div class="container mt-5">
    <div class="alert alert-danger text-center">
      <strong>Error:</strong> No student ID provided in the URL.
    </div>
  </div>
<%
}
%>
<%@ include file="footer.jsp" %>
</body>
</html>
