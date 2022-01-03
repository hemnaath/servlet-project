package com.hotelroombooking.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.hotelroombooking.model.Guest;
import com.hotelroombooking.model.MeetingHallTransaction;

public interface MeetingHallTransactionDao 
{
	public boolean bookMeetingHall(HttpSession session);
	public boolean cancelMeetingHall(HttpSession session);
	public boolean updateMeetingHall(HttpSession session);
	public List<MeetingHallTransaction> showMeetingHallBooking(Guest guestObj) ;
	public void addMeetingHallAdmin();
	public void deleteMeetingHallAdmin() ;
	public void updateMeetingHallAdmin() ;
}
