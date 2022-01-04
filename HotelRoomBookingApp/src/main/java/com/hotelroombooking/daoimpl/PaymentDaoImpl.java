package com.hotelroombooking.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

import com.hotelroombooking.util.ConnectionUtil;
import com.hotelroombooking.model.Guest;

public class PaymentDaoImpl 
{
	public void payment(Guest guestObj) throws SQLException
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter Card Details");
		long cardNumber = sc.nextLong();
		
		String cardDetailsQuery = "insert into payment_details values (?)";
		Connection conn = ConnectionUtil.getDbConnection();
		PreparedStatement pstmt = conn.prepareStatement(cardDetailsQuery);
		pstmt.setLong(1, cardNumber);
		pstmt.executeUpdate();
	}
}
