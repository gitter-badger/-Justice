package com.cava.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by roma on 12.05.15.
 */
@Entity
@Table(name = "sensor")
public class Sensor {

    private int id;
    private String login;
    private Date timeIn;
    private Date timeOut;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "username")
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    @Column(name = "time_in")
    public Date getTimeIn() {
        return timeIn;
    }

    public void setTimeIn(Date timeIn) {
        this.timeIn = timeIn;
    }

    @Column(name = "time_out")
    public Date getTimeOut() {
        return timeOut;
    }

    public void setTimeOut(Date timeOut) {
        this.timeOut = timeOut;
    }
}
