package com.leapforg.pms.entity.DAO;

import java.sql.SQLException;
import java.util.List;

public interface GenericDAO <T>{
    int insert(T users) throws SQLException,ClassNotFoundException;
    int update(T users) throws SQLException,ClassNotFoundException;
    int delete(int id) throws SQLException,ClassNotFoundException;
    T getById(int id) throws SQLException,ClassNotFoundException;
    List<T> getAll() throws SQLException,ClassNotFoundException;
}
