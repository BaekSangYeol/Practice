package practice.member.exception;

public class MemberNotFoundException extends Exception{
	public MemberNotFoundException() {
		
	}
	public MemberNotFoundException(String msg) {
		super(msg);
	}
}
