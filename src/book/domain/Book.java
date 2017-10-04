package book.domain;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Book {
	private String ISBN;
	private String title;
	private int authorID;
	private String publisher;
	private String Inidata;
	private Date publishDate;
	private double price;

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getAuthorID() {
		return authorID;
	}

	public void setAuthorID(int authorID) {
		this.authorID = authorID;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getInidata() {
		return Inidata;
	}

	public void setInidata(String Inidata) {
		this.Inidata = Inidata;
	}

	public Date getPublishDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date;
		try {
			date = sdf.parse(Inidata);
			return new java.sql.Date(date.getTime());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
		// System.out.println("!!!!!!!!!!!!! " + publishDate.toString());
		// if (this.Inidata == null)
		// {
		// System.out.println("null");
		// }
		this.Inidata = publishDate != null ? publishDate.toString() : null;
		// this.setInidata(publishDate.toString());
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public void print() {
		System.out.println("book: " + this.ISBN + ' ' + this.title + ' ' + this.authorID + ' ' + this.publisher + ' '
				+ this.publishDate + ' ' + this.price);
	}

}
