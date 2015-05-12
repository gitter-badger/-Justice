package com.cava.model;

import javax.persistence.*;

/**
 * Created by roma on 12.05.15.
 */
@Entity
@Table(name = "users")
public class User {

    private String login;
    private String password;
    private int enabled;
    private UserStatus status;

    @Id
    @Column(name = "username")
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }

    @Enumerated(EnumType.STRING)
    public UserStatus getStatus() {
        return status;
    }

    public void setStatus(UserStatus status) {
        this.status = status;
    }
}
