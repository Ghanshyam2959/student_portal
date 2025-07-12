package s.p.r;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
@WebServlet("/add")
public class addstudt extends HttpServlet
{
@Override
public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
{
	String name=req.getParameter("name");
	String email=req.getParameter("email");
	String mobile=req.getParameter("mobile");
	String course=req.getParameter("course");
	String gender=req.getParameter("gender");

	String address=req.getParameter("address");
	String password=req.getParameter("password");

	Student s1=new Student();
	s1.setName(name);
	s1.setEmail(email);
	s1.setMobile(mobile);
	s1.setCourse(course);
	s1.setGender(gender);
	s1.setAddress(address);
	s1.setPassword(password);

	Configuration cf= new Configuration().configure();
	SessionFactory sf=cf.buildSessionFactory();
	 Session s=sf.openSession();
	 s.beginTransaction();
	 s.save(s1);
	
	 s.getTransaction().commit();

	 res.sendRedirect("index.jsp?msg=success");
}
}
