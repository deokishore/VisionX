package com.tamaar.vo;

import com.tamaar.shoppingcart.parser.OrderVo;

import java.util.List;

public class ContactListVO {
    private int pagesCount;
    private long totalContacts;

    private String actionMessage;
    private String searchMessage;

    private List<OrderVo> contacts;

    public ContactListVO() {
    }

    public ContactListVO(int pages, long totalContacts, List<OrderVo> contacts) {
        this.pagesCount = pages;
        this.contacts = contacts;
        this.totalContacts = totalContacts;
    }

    public int getPagesCount() {
        return pagesCount;
    }

    public void setPagesCount(int pagesCount) {
        this.pagesCount = pagesCount;
    }

    public List<OrderVo> getContacts() {
        return contacts;
    }

    public void setContacts(List<OrderVo> contacts) {
        this.contacts = contacts;
    }

    public long getTotalContacts() {
        return totalContacts;
    }

    public void setTotalContacts(long totalContacts) {
        this.totalContacts = totalContacts;
    }

    public String getActionMessage() {
        return actionMessage;
    }

    public void setActionMessage(String actionMessage) {
        this.actionMessage = actionMessage;
    }

    public String getSearchMessage() {
        return searchMessage;
    }

    public void setSearchMessage(String searchMessage) {
        this.searchMessage = searchMessage;
    }
}