package com.hotelroombooking.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotelroombooking.daoimpl.MeetingHallTransactionDaoImpl;
import com.hotelroombooking.daoimpl.RoomTransactionDaoImpl;
import com.hotelroombooking.model.MeetingHallTransaction;
import com.hotelroombooking.model.RoomTransaction;

/**
 * Servlet implementation class bookMeetingHall
 */
@WebServlet("/bookMeetingHall")
public class bookMeetingHall extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bookMeetingHall() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		String checkIn = request.getParameter("checkIn");
		String checkOut = request.getParameter("checkOut");
		String category = request.getParameter("category");
		String location = request.getParameter("location");
		
		MeetingHallTransaction meetingHallTransObj = new MeetingHallTransaction(0,checkIn,checkOut,category,location);
		MeetingHallTransactionDaoImpl meetingHallTransDaoObj = new MeetingHallTransactionDaoImpl();
		HttpSession session = request.getSession();
		session.setAttribute("bookMeetingHallDetails", meetingHallTransObj);
		boolean flag=meetingHallTransDaoObj.bookMeetingHall(session);
		response.sendRedirect("Payment.jsp");
//		PrintWriter pw = response.getWriter();
//		pw.write(flag+"");
		
		
		
//		doGet(request, response);
	}

}
