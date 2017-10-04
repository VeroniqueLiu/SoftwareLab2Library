package authors.service;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import author.domain.Author;
import database.Connect;

public class AuthorService {
	private Connect cont = new Connect();
	private List<Author> authors;
	private Author author;
	
	public List<Author> getAllAuthors() {
		authors = new ArrayList<>();
		String sql = "select * from author";
		ResultSet result = cont.executeQuery(sql);
		//System.out.println("成功进入getAllauthors");
		try{
			while (result.next()){
				author = new Author();
				author.setAuthorID(result.getInt("AuthorID"));
				author.setName(result.getString("Name"));
				author.setCountry(result.getString("Country"));
				author.setAge(result.getInt("Age"));
				authors.add(author);
			}
		}catch (Exception e) {
			e.printStackTrace();
			authors = null;
		}
		return authors;	
	}
	public List<Author> getAuthorS(String authorname) {
		authors=new ArrayList<>();
		String sql = "select * from author where name='" + authorname + "'";
		ResultSet result = cont.executeQuery(sql);

		
		try{
			while (result.next()){		
				author = new Author();
				author.setAuthorID(result.getInt("authorID"));
				author.setName(result.getString("name"));
				author.setCountry(result.getString("country"));
				author.setAge(result.getInt("age"));
				authors.add(author);
				
			}
		}catch (Exception e){
			e.printStackTrace();
			authors = null;			
		}
		return authors;
	}
	public Author getAuthor(String authorname) {
		
		String sql = "select * from author where name='" + authorname + "'";
		ResultSet result = cont.executeQuery(sql);

		
		try{
			if (result.next()){		
				author = new Author();
				author.setAuthorID(result.getInt("authorID"));
				author.setName(result.getString("name"));
				author.setCountry(result.getString("country"));
				author.setAge(result.getInt("age"));
				
				
			}
		}catch (Exception e){
			e.printStackTrace();
			author = null;			
		}
		return author;
	}
	
	public Author getAuthor(int authorID) {
		String sql = "select * from author where authorID='" + authorID + "'";
		ResultSet result = cont.executeQuery(sql);

		author = new Author();
		try{
			if (result.next()){		
				author.setAuthorID(result.getInt("authorID"));
				author.setName(result.getString("name"));
				author.setCountry(result.getString("country"));
				author.setAge(result.getInt("age"));
			}
		}catch (Exception e){
			e.printStackTrace();
			author = null;			
		}
		return author;
	}
	
}
