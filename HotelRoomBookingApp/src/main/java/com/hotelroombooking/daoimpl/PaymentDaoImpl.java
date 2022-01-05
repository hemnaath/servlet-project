package com.hotelroombooking.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

import javax.servlet.http.HttpSession;

import com.hotelroombooking.util.ConnectionUtil;
import com.hotelroombooking.dao.PaymentDao;
import com.hotelroombooking.model.Guest;
import com.hotelroombooking.model.Payment;

public class PaymentDaoImpl implements PaymentDao
{
	public boolean payment(HttpSession session)  
	{
		boolean flag=false;
		int guestId=0;
//		Scanner sc = new Scanner(System.in);
//		System.out.println("Enter Card Details");
//		long cardNumber = sc.nextLong();
		try {
			Guest guestObj=(Guest)session.getAttribute("currentUser");
			Payment paymentObj=(Payment)session.getAttribute("payment");
			
			GuestDaoImpl guestDaoObj = new GuestDaoImpl();

			guestId=guestDaoObj.findGuestId(guestObj);
		
		String cardDetailsQuery = "insert into payment_details(card_number,guest_id) values (?,?)";
		Connection conn = ConnectionUtil.getDbConnection();
		PreparedStatement pstmt = conn.prepareStatement(cardDetailsQuery);
		pstmt.setLong(1, paymentObj.getCardNumber());
		pstmt.setInt(2, guestId);
		flag=pstmt.executeUpdate()>0;
		if(flag)
		{
			System.out.println("Payment Successfull");
		}
		else
		{
			System.err.println("Payment Failed");
		}
		}
		catch(Exception e)
		{
//			System.out.println(e);
			e.printStackTrace();
		}
		return flag;
	}
}
