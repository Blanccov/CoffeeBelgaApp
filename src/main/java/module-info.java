module com.example.cafebeglam {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.graphics;
    requires javafx.base;
    requires java.naming;
    requires java.sql;
    requires java.xml;
    requires jakarta.activation;
    requires jasperreports;



    opens com.example.cafebelgam to javafx.fxml, org.postgresql;
    exports com.example.cafebelgam;
}