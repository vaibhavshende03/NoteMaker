package com.servlets;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SaveNote")
public class SaveNote extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public SaveNote() {
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			//title,content fetch
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Note note=new Note(title,content,new Date());
			
//			System.out.println(note.getId()+" : "+note.getTitle()+" : "+note.getContent()) ;
			//hibernate:save()
			Session session=FactoryProvider.getFactory().openSession();
			Transaction tx=session.beginTransaction();
			session.persist(note);
			tx.commit();
			session.close();
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1 style='text-align:center;'> Note is added Succesfully</h1>");
			out.println("<h1 style='text-align:center;'> <a href='all_notes.jsp'>View all notes</a></h1>");
			
//			response.sendRedirect("all_notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
