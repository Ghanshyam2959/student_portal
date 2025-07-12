package s.p.r;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
@WebServlet("/up")
public class update extends HttpServlet 
{
public void doPost (HttpServletRequest req,HttpServletResponse res) throws IOException 
{
	 int  id = Integer.parseInt(req.getParameter("id"));
	 String name=req.getParameter("name");
		String email=req.getParameter("email");
		String mobile=req.getParameter("mobile");
		String course=req.getParameter("course");
		String gender=req.getParameter("gender");
		String address=req.getParameter("address");

     Configuration cf = new Configuration().configure();
     SessionFactory sf = cf.buildSessionFactory();
     Session s = sf.openSession();
     s.beginTransaction();
      
     Query q = s.createQuery("update Student so set name=:n,email=:e,mobile=:m,address=:a,gender=:g,course=:c where id=:id");
     q.setParameter("id", id);
     q.setParameter("n", name);
     q.setParameter("e", email);
     q.setParameter("m", mobile);
     q.setParameter("a", address);
     q.setParameter("g", gender);
     q.setParameter("c", course);
     
    q.executeUpdate();
    s.getTransaction().commit();
    res.sendRedirect("test.jsp");
}
}
