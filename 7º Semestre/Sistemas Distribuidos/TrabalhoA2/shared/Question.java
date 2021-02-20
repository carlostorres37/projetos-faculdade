package shared;

public class Question {
	public int id;
	public String question;
	public int answer;
	public int points;
	
	public Question(int id, String question, int answer, int points) {
		this.id = id;
		this.question = question;
		this.answer = answer;
		this.points = points;
	}
}
