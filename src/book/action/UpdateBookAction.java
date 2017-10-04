package book.action;


import com.opensymphony.xwork2.Action;

import authors.service.AuthorService;
import book.domain.Book;
import book.service.BookService;


public class UpdateBookAction implements Action {
	private Book book;
	private int authorID;
	private String ISBN;
	
	
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public int getAuthorID() {
		return authorID;
	}
	public void setAuthorID(int authorID) {
		this.authorID = authorID;
	}
	@Override
	public String execute() throws Exception {
		book.setISBN(ISBN);
		
		System.out.println("成功进入UpdateBookAction ISBN=" + book.getISBN());
		
		BookService bs = new BookService();		
		int i = bs.updateBook(book, authorID);
		
		if (i<0) return ERROR;
		return SUCCESS;
	}

}
