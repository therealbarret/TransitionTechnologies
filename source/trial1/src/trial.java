import javafx.application.Application;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.*;
import javafx.stage.Stage;
import javafx.scene.control.Button;
import java.sql.*;
import javafx.util.Callback;

public class trial extends Application {
    //Login Page
    Label user = new Label("Username: ");
    TextField username = new TextField();
    Label pass = new Label("Password: ");
    PasswordField password = new PasswordField();
    Button log = new Button("Login");
    Label logError = new Label();
    HBox logUser = new HBox();
    HBox logPass = new HBox();
    VBox logPage = new VBox();

    Label sqlState = new Label("Enter Query: ");
    TextArea sql = new TextArea();
    HBox what = new HBox();
    VBox mainMenu = new VBox();

    ObservableList<ObservableList> db = FXCollections.observableArrayList();
    TableView tableview = new TableView();
    Button executeOperation = new Button("Execute");


    //scene and stages
    Stage stage;
    Scene main;
    Scene login;

    //Connection to  database
    String DB_URL;
    Connection conn;

    public static void main(String[] args) {launch(args);}

    @Override
    public void start(Stage primaryStage) {


        //Login Page
        logUser.getChildren().addAll(user, username);
        logPass.getChildren().addAll(pass, password);
        logPage.getChildren().addAll(logUser,logPass,log, logError);

        what.getChildren().addAll(sqlState, sql);
        mainMenu.getChildren().addAll(what, tableview, executeOperation);

        //Allow access to database or return error on login
        log.setOnAction(new EventHandler<ActionEvent>() {
            public void handle(ActionEvent t) {
                DB_URL = "jdbc:sqlserver://localhost;database=Demo_Database;username=" + username.getText() + ";password=" + password.getText();
                try{
                    conn = DriverManager.getConnection(DB_URL);
                    if(!conn.isClosed()){
                        main = new Scene(mainMenu, 550, 550);
                        stage.setScene(main);
                    }
                }
                catch (Exception ex) {
                    logError.setText("Invalid Username or Password ERROR: " + ex.getMessage());
                }
            }
        });

        executeOperation.setOnAction(new EventHandler<ActionEvent>() {
            public void handle(ActionEvent t) {
                try
                {
                    conn = DriverManager.getConnection(DB_URL);
                    // Create a Statement object.


                    // Create a string with a SELECT statement.
                    String sqlStatement = sql.getText();
                    // Send the statement to the DBMS.
                    ResultSet result = conn.createStatement().executeQuery(sqlStatement);
                    result.setFetchSize(0);


                    // Display the contents of the result set.

                    db.clear();
                    tableview.getColumns().clear();
                    tableview.setItems(null);
                    for(int i=0 ; i<result.getMetaData().getColumnCount(); i++){
                        //We are using non property style for making dynamic table
                        final int j = i;
                        TableColumn col = new TableColumn(result.getMetaData().getColumnName(i+1));
                        col.setCellValueFactory((Callback<TableColumn.CellDataFeatures<ObservableList, String>, ObservableValue<String>>) param -> new SimpleStringProperty(param.getValue().get(j).toString()));

                        tableview.getColumns().addAll(col);
                        System.out.println("Column ["+i+"] ");
                    }

                    while(result.next()){
                        //Iterate Row
                        ObservableList<String> row = FXCollections.observableArrayList();
                        for(int i=1 ; i<=result.getMetaData().getColumnCount(); i++){
                            //Iterate Column
                            row.add(result.getString(i));
                        }
                        System.out.println("Row [1] added "+row );
                        db.add(row);
                    }

                    //FINALLY ADDED TO TableView
                    tableview.setItems(db);

                }
                catch(Exception e){
                    e.printStackTrace();
                    System.out.println("Error on Building Data");
                }
                mainMenu.getChildren().addAll(what, tableview, executeOperation);
                main = new Scene(mainMenu, 550, 550);
                stage.setScene(main);
            }
        });

        //Set beginning stage
        login = new Scene(logPage);
        stage = new Stage();
        stage.setScene(login);
        stage.show();
    }
}
