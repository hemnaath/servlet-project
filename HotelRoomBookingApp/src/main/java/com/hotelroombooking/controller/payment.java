package com.hotelroombooking.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hotelroombooking.daoimpl.PaymentDaoImpl;
import com.hotelroombooking.model.Payment;

/**
 * Servlet implementation class payment
 */
@WebServlet("/payment")
public class payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public payment() {
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
		
		
		
		long cardNumber = Long.parseLong(request.getParameter("cardNumber"));
		
		Payment paymentObj = new Payment(0,cardNumber,null);
		PaymentDaoImpl paymentDaoObj = new PaymentDaoImpl();
		HttpSession session = request.getSession();
		session.setAttribute("payment", paymentObj);
		boolean flag = paymentDaoObj.payment(session);
		PrintWriter pw = response.getWriter();
		pw.write(flag+"");
		
		
		
		
//		doGet(request, response);
	}

}
