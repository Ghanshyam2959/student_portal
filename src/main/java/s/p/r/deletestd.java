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

@WebServlet("/del")
public class deletestd extends HttpServlet {
    @Override
	public void service (HttpServletRequest req, HttpServletResponse res) throws IOException {
        int  id = Integer.parseInt(req.getParameter("id"));
        Configuration cf = new Configuration().configure();
        SessionFactory sf = cf.buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
         
        Query q = s.createQuery("delete from Student S where S.id = :id");
        q.setParameter("id", id);
        q.executeUpdate();
        s.getTransaction().commit();

        res.sendRedirect("test.jsp");
    }
}
