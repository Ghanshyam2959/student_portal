<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.cfg.Configuration" %>
<%@ page import="org.hibernate.Query" %>
<%@ page import="s.p.r.Student" %>
<%@ page import="java.util.List" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    body {
      background: linear-gradient(to right, #f8f9fa, #e0eafc);
    }

    .page-title {
      font-size: 2.2rem;
      font-weight: bold;
      text-align: center;
      margin-top: 40px;
    }

    .card-style {
      background: white;
      padding: 25px;
      border-radius: 15px;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    }

    .table th {
      background-color: #343a40;
      color: white;
    }

    .table tbody tr:nth-child(even) {
      background-color: #f5f5f5;
    }

    .btn-sm {
      padding: 5px 10px;
      font-size: 0.875rem;
    }
    

    @media (max-width: 768px) {
      .page-title {
        font-size: 1.6rem;
      }
    }
  </style>
</head>

<body>
  <%@ include file="navbar.jsp" %>

  <!-- Page Title -->
  <h2 class="page-title">
  <span class="highlight-primary">Student</span>
  <span class="highlight-secondary">Records</span>
</h2>

  <!-- Table Card -->
  <div class="container mt-4 mb-5">
    <div class="card-style">
      <table class="table table-bordered table-hover text-center">
        <thead>
          <tr>
            <th>Full Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Course</th>
            <th>Address</th>
            <th>Gender</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <%
            Configuration cf = new Configuration().configure();
            SessionFactory sf = cf.buildSessionFactory();
            Session s = sf.openSession();
            Query q = s.createQuery("from Student");
            List<Student> l1 = q.list();
            for (Student ls : l1) {
          %>
          <tr>
            <td><%= ls.getName() %></td>
            <td><%= ls.getEmail() %></td>
            <td><%= ls.getMobile() %></td>
            <td><%= ls.getCourse() %></td>
            <td><%= ls.getAddress() %></td>
            <td><%= ls.getGender() %></td>
            <td>
              <div class="d-flex justify-content-center gap-2">
                <a href="update.jsp?id=<%= ls.getId() %>" class="btn btn-primary btn-sm">Update</a>
                <a href="del?id=<%= ls.getId() %>" class="btn btn-danger btn-sm">Delete</a>
              </div>
            </td>
          </tr>
          <%
            }
            s.close();
            sf.close();
          %>
        </tbody>
      </table>
    </div>
  </div>

  <% 
    String msg = request.getParameter("msg");
    if ("updated".equals(msg)) {
  %>
  <script>
    alert("Form updated successfully!");
  </script>
  <% } %>

  <%@ include file="footer.jsp" %>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
