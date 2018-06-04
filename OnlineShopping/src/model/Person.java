package model;
import java.io.Serializable;

public class Person implements Serializable {
	
	private static final long serialversionUID =12L;
	public String name;
	public int num;
	

	public Person(String name, int num) {
		this.name = name;
		this.num = num;
	}
}
