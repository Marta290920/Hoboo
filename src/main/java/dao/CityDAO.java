package dao;

import entity.City;

import java.sql.SQLException;
import java.util.List;

public interface CityDAO {
    public List<City> getAllCities() throws SQLException;

    public Long getCityIdbyName(String name) throws SQLException;
}
