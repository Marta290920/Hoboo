package dao.impl;

import dao.CityDAO;
import entity.City;


import entity.Hotel;
import util.DatabaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CityDAOImpl implements CityDAO {
    @Override
    public List<City> getAllCities() throws SQLException {
        Connection connection = DatabaseConnection.getConnection();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery("SELECT * FROM city");
        ArrayList<City> cityList = new ArrayList<>();
        while (resultSet.next()){
            City city=new City();
            city.setId(resultSet.getLong("id"));
            city.setName(resultSet.getNString("name"));
            cityList.add(city);
        }
        return cityList;
    }
    public Long city_id(String name) throws SQLException{

        Connection connection = DatabaseConnection.getConnection();
        Statement statement = connection.createStatement();
        String querySql = "SELECT id FROM city where city.name=?";
        PreparedStatement prstatment = connection.prepareStatement(querySql);
        prstatment.setString(1,name);
        ResultSet resultSet = prstatment.executeQuery();
         Long cityId=null;

        while (resultSet.next()) {
          cityId= resultSet.getLong("city_id");
        }
        return cityId;
    }
}
