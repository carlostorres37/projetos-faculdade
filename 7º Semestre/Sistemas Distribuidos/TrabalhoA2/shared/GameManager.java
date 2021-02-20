package shared;
import java.rmi.Naming;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class GameManager extends UnicastRemoteObject implements IGameManager {
	private static final long serialVersionUID = 1L;
	
	private IGameManager gameManager;
	private int playerCount; 
	private Player player1 = null, player2 = null;
	private Player currentPlayer = null;
	private GameStatus gameStatus; 
	
	private int questionCounter = 0;
	private Question currentQuestion = null;
	private Question[] questions = new Question[]{
			new Question(1, "Quanto é 1 + 1?", 2, 1),
			new Question(2, "Quanto é 0 + 1?", 1, 2),
			new Question(3, "Quanto é 0 + 0?", 0, 3),
			new Question(4, "Quanto é 2 + 2?", 4, 4),
			new Question(5, "Quanto é 2 + 1?", 3, 5),
			new Question(6, "Quanto é 2 + 3?", 5, 6)
	};
	
	public GameManager() throws RemoteException {
		playerCount = 0;
		gameStatus = GameStatus.WAITING_FOR_PLAYERS;
	}
	
	public int getUniquePlayerId() throws RemoteException {
		playerCount++;
		
		
		if(gameManager != null) {
			System.out.println("GameManager == null");
			gameManager.getUniquePlayerIdServer2Update(playerCount);
			System.out.println("att request made");
		} else {
			System.out.println("GameManager != null");
		}
		
		if(player1 == null) {
			player1 = new Player(playerCount);
			return player1.getUniqueId();
		}
		
		if(player2 == null) {
			player2 = new Player(playerCount);
			currentPlayer = player1;
			return player2.getUniqueId();
		}
		
		return playerCount;
	}
	
	public GameStatus getGameStatus(int playerId) throws RemoteException {
		refreshGameStatus();
		System.out.println("GameStatus [#" + playerId + "]: " + gameStatus.toString());
		return gameStatus;
	}
	
	private void refreshGameStatus() {
		if(gameStatus != GameStatus.GAME_ENDED) {
			if(player1 == null || player2 == null)
				gameStatus = GameStatus.WAITING_FOR_PLAYERS;
			else
				gameStatus = GameStatus.IN_GAME;
		}
	}

	private void switchCurrentPlayer(int playerId) {
		int player1Id = player1.getUniqueId();
		int player2Id = player2.getUniqueId();
		
		if(playerId == player1Id || playerId == player2Id) {
			if(playerId == player1Id)
				currentPlayer = player2;
			else if(playerId == player2Id)
				currentPlayer = player1;
		}
	}
	
	public boolean isPlayerTurn(int playerId) throws RemoteException {
		System.out.println("IsPlayerTurn [#" + playerId + "]: " + currentPlayer.getUniqueId());
		
		if(currentPlayer.getUniqueId() == playerId)
			return true;
		
		return false;
	}
	
	public boolean isAnswerCorrect(int playerId, int answer) throws RemoteException {
		questionCounter++;
		System.out.println("isAnswerCorrect -> questionCounter: " + questionCounter);
		
		if(questionCounter == 5)
			gameStatus = GameStatus.GAME_ENDED;
		
		if(currentPlayer.getUniqueId() == playerId && answer == currentQuestion.answer) {
			currentPlayer.increaseCorrectAnswersCountBy(currentQuestion.points);
			return true;
		} else if(currentPlayer.getUniqueId() == playerId && answer != currentQuestion.answer) {
			switchCurrentPlayer(playerId);
		}
			
		return false;
	}
	
	public String getQuestion(int playerId) throws RemoteException {
		System.out.println("getQuestion -> questionCounter: " + questionCounter);
		if(currentPlayer.getUniqueId() == playerId) {
			if(questionCounter < 6) {
				currentQuestion = questions[questionCounter];
				return questions[questionCounter].question;
			} else
				return "";
		}
		
		return null;
	}

	public void connectToServer2(String host, String _objname) {
		try {
			String objname = "//" + host + "/" + _objname;
			System.out.println("Aguardando o objeto 2: " + objname);
			gameManager = (IGameManager) Naming.lookup(objname);
		} catch(Exception e) {
			System.err.println("Problemas de inicialização 2: " + e);
			e.printStackTrace();
			System.exit(2);
		}
	}
	
	public void getUniquePlayerIdServer2Update(int playerId) throws RemoteException {
		if(player1 == null) {
			player1 = new Player(playerId);
			System.out.println("Player 1 FROM [NULL] to [" + playerId + "]");
		} else if(player2 == null) {
			player2 = new Player(playerId);
			System.out.println("Player 2 FROM [NULL] to [" + playerId + "]");
		}
	}
	
	public boolean isWinner(int playerid) throws RemoteException {
		Player winner;
		
		System.out.println();
		System.out.println();
		System.out.println();
		System.out.println("Player1 points: " + player1.getCorrectAnswersCount());
		System.out.println("Player2 points: " + player2.getCorrectAnswersCount());
		System.out.println();
		System.out.println();
		System.out.println();
		
		if(player1.getCorrectAnswersCount() > player2.getCorrectAnswersCount()) {
			winner = player1;
		} else {
			winner = player2;
		}
		
		if(winner.getUniqueId() == playerid)
			return true;
		else 
			return false; 
	}
}