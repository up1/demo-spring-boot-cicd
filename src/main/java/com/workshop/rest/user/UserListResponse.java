package com.workshop.rest.user;

import java.util.ArrayList;
import java.util.List;

public class UserListResponse {
    private List<UserResponse> users = new ArrayList<>();

    private String updated;

    public String getUpdated() {
        return updated;
    }

    public void setUpdated(String updated) {
        this.updated = updated;
    }

    public UserListResponse() {
    }

    public UserListResponse(UserResponse... users) {
        for (UserResponse user : users) {
            this.users.add(user);
        }
    }


    public List<UserResponse> getUsers() {
        return users;
    }

    public void setUsers(List<UserResponse> users) {
        this.users = users;
    }

    public void add(UserResponse u) {
        users.add(u);
    }
}
