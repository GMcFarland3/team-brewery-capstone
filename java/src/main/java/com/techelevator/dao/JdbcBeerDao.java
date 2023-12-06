package com.techelevator.dao;

import com.techelevator.exception.DaoException;
import com.techelevator.model.Beer;
import org.springframework.jdbc.CannotGetJdbcConnectionException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Component
public class JdbcBeerDao implements BeerDao{
    private final JdbcTemplate jdbcTemplate;

    public JdbcBeerDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    @Override
    public List<Beer> listBeersByBreweryId( int brewId) {
        List<Beer> beers = new ArrayList<>();
        String sql = "SELECT beer_id, brew_id, name, type, description, abv, image FROM public.beers WHERE brew_id = ?;";
        try {
            SqlRowSet results = jdbcTemplate.queryForRowSet(sql,brewId);
            while (results.next()) {
                Beer beer = mapRowToBeer(results);
                beers.add(beer);
            }
        } catch (CannotGetJdbcConnectionException e) {
            throw new DaoException("Unable to connect to server or database", e);
        }
        return beers;
    }

    private Beer mapRowToBeer(SqlRowSet rs){
        Beer beer = new Beer();
        beer.setBeerId(rs.getInt("beer_id"));
        beer.setBrewId(rs.getInt("brew_id"));
        beer.setName(rs.getString("name"));
        beer.setType(rs.getString("type"));
        beer.setDescription(rs.getString("description"));
        beer.setAbv(rs.getString("abv"));
        beer.setImage(rs.getString("image"));
        return beer;
    }


}
