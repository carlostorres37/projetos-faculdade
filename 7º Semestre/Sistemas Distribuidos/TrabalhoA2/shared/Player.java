package shared;

public class Player implements IPlayer {
	
	private int uniqueId;
	private int correctAnswersCount;
	
	public Player(int uniqueId) {
		this.uniqueId = uniqueId;
		this.correctAnswersCount = 0;
	}
	
	public int getUniqueId() {
		return uniqueId;
	}
	
	public void setUniqueId(int uniqueId) {
		this.uniqueId = uniqueId;
	}
	
	public int getCorrectAnswersCount() {
		return correctAnswersCount;
	}
	
	public void setCorrectAnswersCount(int correctAnswersCount) {
		this.correctAnswersCount = correctAnswersCount;
	}
	
	public void increaseCorrectAnswersCountBy(int n) {
		this.correctAnswersCount += n;
	}
}