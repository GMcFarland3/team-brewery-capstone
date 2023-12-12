package com.techelevator.controller;

import com.techelevator.dao.BeerDao;
import com.techelevator.dao.BrewDao;
import com.techelevator.dao.ReviewDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Beer;
import com.techelevator.model.Brewery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@CrossOrigin
@RestController
public class HomeController {
    private final BrewDao brewDao;
    private final UserDao userDao;
    private final BeerDao beerDao;
    private final ReviewDao reviewDao;

    @Autowired
    public HomeController(BrewDao brewDao, UserDao userDao,BeerDao beerDao, ReviewDao reviewDao) {
        this.brewDao = brewDao;
        this.userDao = userDao;
        this.beerDao = beerDao;
        this.reviewDao = reviewDao;
    }

    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(path = "/breweries", method = RequestMethod.GET)
    public List<Brewery> listBreweries(Principal principal) {
        return this.brewDao.listBreweries();
    }


    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(path = "/breweries/beers", method = RequestMethod.GET)
    public List<Beer> getBeers(Principal principal) {
        return this.beerDao.listBeers();
    }

}
