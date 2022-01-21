package com.hotelroombooking.model;

import java.util.Date;
import java.util.Objects;

public class Payment 
{
	private int id;
	private long cardNumber;
	private String expiryDate;
	private int cvv;
	private Guest guestId;
	public Payment(int id, long cardNumber, String month, int cvv, Guest guestId) {
		super();
		this.id = id;
		this.cardNumber = cardNumber;
		this.expiryDate = month;
		this.cvv = cvv;
		this.guestId = guestId;
	}
	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Payment [id=" + id + ", cardNumber=" + cardNumber + ", expiryDate=" + expiryDate + ", cvv=" + cvv + ", guestId="
				+ guestId + "]";
	}
	@Override
	public int hashCode() {
		return Objects.hash(cardNumber, cvv, guestId, id, expiryDate);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Payment other = (Payment) obj;
		return cardNumber == other.cardNumber && cvv == other.cvv && Objects.equals(guestId, other.guestId)
				&& id == other.id && Objects.equals(expiryDate, other.expiryDate);
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public long getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(long cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getMonth() {
		return expiryDate;
	}
	public void setMonth(String month) {
		this.expiryDate = month;
	}
	public int getCvv() {
		return cvv;
	}
	public void setCvv(int cvv) {
		this.cvv = cvv;
	}
	public Guest getGuestId() {
		return guestId;
	}
	public void setGuestId(Guest guestId) {
		this.guestId = guestId;
	}
	
	
	
	
}