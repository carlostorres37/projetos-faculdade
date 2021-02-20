package client;

import java.rmi.Naming;
import java.rmi.RemoteException;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import javax.swing.JOptionPane;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.ColumnConstraints;
import javafx.scene.layout.GridPane;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import shared.GameStatus;
import shared.IGameManager;

public class Client extends Application {
	
	String[] args;
	IGameManager gameManager = null;
	int playerId;
	
	Timer gameStatustimer;
	GameStatus gameStatus;
	
	GridPane root;
	Text txtGameStatus = null;
	Text txtPlayerTurn = null;
	Text txtQuestion = null;
	TextField tfAnswer = null;
	Button btnSendAnswer = null;
	Text txtAnswerMessage = null;
	
	public static void main(String[] args) {
		launch(args);
	}
	
	public void init() throws Exception {
		List<String> args = getParameters().getRaw();
		
		validateArgumentsOrFail(args.size());
		
		this.args = args.toArray(new String[args.size()]);
		connectToServer();
		
		
		super.init();
	}
	
	private void validateArgumentsOrFail(int argsLength) {
		if(argsLength != 2) {
			System.err.println("\nUsage:\t java Client serverIp objname\n");
			System.err.println("Use o comando javac Client serverIp objname");
			System.err.println("Pois o objeto está passado por parâmetro para inicializar o cliente");
			System.exit(1);
		}
	}
	
	private void connectToServer() {
		try {
			String objname = "//" + args[0] + "/" + args[1];
			System.out.println("Aguardando o objeto: " + objname);
			gameManager = (IGameManager) Naming.lookup(objname);
		} catch(Exception e) {
			System.err.println("Problemas de inicialização: " + e);
			e.printStackTrace();
			System.exit(2);
		}
	}
	
	private void setGameStatusTimer() {
		gameStatustimer = new Timer();
		gameStatustimer.scheduleAtFixedRate(new TimerTask() {
			
			@Override
			public void run() {
				try {					
					gameStatus = gameManager.getGameStatus(playerId);
					txtGameStatus.setText(gameStatus.toString());
					
					if(gameStatus == GameStatus.IN_GAME) {
						boolean isPlayerTurn = gameManager.isPlayerTurn(playerId);
						if(isPlayerTurn) {
							txtPlayerTurn.setText("YOUR TURN!");
							
							String question = gameManager.getQuestion(playerId);
							txtQuestion.setText(question);
							
							if(tfAnswer.isDisabled() || btnSendAnswer.isDisabled()) {
								tfAnswer.setDisable(false);
								btnSendAnswer.setDisable(false);
							}
							
							gameStatustimer.cancel();
						} else {
							txtPlayerTurn.setText("ENEMY'S TURN!");
							
							if(!tfAnswer.isDisabled() || !btnSendAnswer.isDisabled()) {
								tfAnswer.setDisable(true);
								btnSendAnswer.setDisable(true);
							}
						}
					} else if(gameStatus == GameStatus.GAME_ENDED) {
						
						boolean amIWinner = gameManager.isWinner(playerId);
						
						if(amIWinner) {
							JOptionPane.showMessageDialog(null, "VOCE GANHOU!");
						} else {
							JOptionPane.showMessageDialog(null, "VOCE PERDEU!");
						}
						
						gameStatustimer.cancel();
						System.exit(0);
					}
				} catch(RemoteException re) {
					System.err.println("Problemas com a chamada remota: " + re);
					re.printStackTrace();
					System.exit(5);
				}
			}
		}, 0, 1000);
	}

	@Override
	public void start(Stage stage) throws Exception {
		root = new GridPane();
		root.setAlignment(Pos.BASELINE_LEFT);
		root.setHgap(10);
		root.setVgap(5);
		root.setPadding(new Insets(25, 25, 25, 25));
		
		Label lblPlayerId = new Label();
		lblPlayerId.setText("PLAYER ID: ");
		root.add(lblPlayerId, 0, 0);
		
		Text txtPlayerId = new Text();
		root.add(txtPlayerId, 1, 0);
		
		Label lblGameStatus = new Label();
		lblGameStatus.setText("GAME STATUS: ");
		root.add(lblGameStatus, 0, 1);
		
		txtGameStatus = new Text();
		txtGameStatus.setText(GameStatus.WAITING_FOR_PLAYERS.toString());
		root.add(txtGameStatus, 1, 1);
		
		txtPlayerTurn = new Text();
		txtPlayerTurn.setText("--");
		root.add(txtPlayerTurn, 0, 2);
		
		Label lblQuestion = new Label();
		lblQuestion.setText("QUESTION: ");
		root.add(lblQuestion, 0, 3);
		
		txtQuestion = new Text();
		txtQuestion.setText("Quanto é 1 + 1?");
		root.add(txtQuestion, 1, 3);
		
		Label lblAnswer = new Label();
		lblAnswer.setText("ANSWER: ");
		root.add(lblAnswer, 0, 4);
		
		tfAnswer = new TextField();
		tfAnswer.setDisable(true);
		root.add(tfAnswer, 1, 4);
		
		btnSendAnswer = new Button();
		btnSendAnswer.setText("Enviar");
		btnSendAnswer.setDisable(true);
		btnSendAnswer.setOnAction(new EventHandler<ActionEvent>() {
			
			@Override
			public void handle(ActionEvent arg0) {
				try {
					int answer = Integer.parseInt(tfAnswer.getText());
					
					boolean isCorrectAnswer = gameManager.isAnswerCorrect(playerId, answer);
					
					if(isCorrectAnswer) {
						System.out.println("[" + answer + "]RESPOSTA CORRETA! PARABENS! :D");
						txtAnswerMessage.setText("RESPOSTA CORRETA! PARABENS! :D");
					} else {
						System.out.println("[" + answer + "]RESPOSTA ERRADA! BOA SORTE! :(");
						txtAnswerMessage.setText("RESPOSTA ERRADA! BOA SORTE! :(");
					}
					
					setGameStatusTimer();
				} catch(RemoteException re) {
					System.err.println("Problemas com a chamada remota: " + re);
					re.printStackTrace();
					System.exit(6);
				}
			}
		});
		root.add(btnSendAnswer, 0, 5);
		
		txtAnswerMessage = new Text();
		root.add(txtAnswerMessage, 0, 6);
		GridPane.setColumnSpan(txtAnswerMessage, 2);
		
		ColumnConstraints col0 = new ColumnConstraints();
		col0.setMinWidth(150);
		root.getColumnConstraints().add(col0);
		
		Scene scene = new Scene(root, 600, 300);   
		stage.setTitle("Question Game");  
		stage.setScene(scene);  
		stage.show();
		
		playerId = gameManager.getUniquePlayerId();
		txtPlayerId.setText(playerId + "");
		
		setGameStatusTimer();
	}
	
	public void stop() {
		gameStatustimer.cancel();
	}

}