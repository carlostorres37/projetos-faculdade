/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compiladoresa2trab;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

/**
 *
 * @author Anton
 */
public class FXMLDocumentController implements Initializable {
    
    @FXML private TextField tfExpression;
    @FXML private Button btValidate;
    @FXML private Label lblIsValid;
    
    private SyntacticAnalyser syntacticAnalyser = new SyntacticAnalyser();
    
    @FXML
    private void handleButtonAction(ActionEvent event) {
        boolean response = syntacticAnalyser.validateExpression(tfExpression.getText());
        if(response)
            lblIsValid.setText("VÁLIDA!");
        else
            lblIsValid.setText("INVÁLIDA!");
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    
}
