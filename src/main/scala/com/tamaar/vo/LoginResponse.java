package com.tamaar.vo;

/**
 * Created by deokishore on 23/01/2016.
 */
public class LoginResponse {
    private String sessionId;
    private String status;
    private String pageToForward;
    private Boolean isGuest;


    public String getSessionId() {
        return sessionId;
    }

    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPageToForward() {
        return pageToForward;
    }

    public void setPageToForward(String pageToForward) {
        this.pageToForward = pageToForward;
    }

    public Boolean getIsGuest() {
        return isGuest;
    }

    public void setIsGuest(Boolean isGuest) {
        this.isGuest = isGuest;
    }
}

