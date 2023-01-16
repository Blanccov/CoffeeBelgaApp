package com.example.cafebelgam;

public class Tables {

    private Integer tableNumber;
    private String type;
    private String status;
    private Integer userId;

    public Tables(Integer tableNumber, String type, String status, Integer user_id) {
        this.tableNumber = tableNumber;
        this.type = type;
        this.status = status;
        this.userId = user_id;
    }

    public Integer getTableNumber() {
        return tableNumber;
    }

    public Integer getUserId() {
        return userId;
    }

    public String getType() {
        return type;
    }

    public String getStatus() {
        return status;
    }
}
