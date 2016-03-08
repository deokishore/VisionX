package com.tamaar.service;

import com.tamaar.dao.UserDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;

/**
 * Created by deokishore on 23/01/2016.
 */
@Service
@Transactional
public class UserService {

    private UserDao userDao;

    public boolean isValidUser(String username, String password) throws SQLException {
        return userDao.isValidUser(username, password);
    }
}