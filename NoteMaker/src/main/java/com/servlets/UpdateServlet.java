package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			int id=Integer.parseInt(request.getParameter("id").trim());
			
			
			Session session=FactoryProvider.getFactory().openSession();
			Transaction tx=session.beginTransaction();
			Note note=session.get(Note.class, id);
			note.setAddedDate(new Date());
			note.setContent(content);
			note.setTitle(title);
					
			tx.commit();
			session.close();
			
			response.sendRedirect("all_notes.jsp");
			
			
		} catch (Exception e) {
		e.printStackTrace();
		}
	}

}
