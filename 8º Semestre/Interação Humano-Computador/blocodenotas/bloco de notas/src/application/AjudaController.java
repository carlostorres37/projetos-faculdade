package application;

import java.awt.Desktop;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Hyperlink;

public class AjudaController {
	@FXML Hyperlink lnkAjuda;
	
	@FXML protected void handleAjudaAction(ActionEvent event) throws URISyntaxException {
		try {
			Desktop.getDesktop().browse(new URL("https://google.com").toURI());
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	}
}
