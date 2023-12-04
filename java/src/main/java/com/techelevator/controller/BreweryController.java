package com.techelevator.controller;

import com.techelevator.dao.BrewDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Brewery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.security.Principal;
import java.util.List;

@CrossOrigin
@RestController
@PreAuthorize("isAuthenticated()")
public class BreweryController {

    private final BrewDao brewDao;
    private final UserDao userDao;

    @Autowired
    public BreweryController(BrewDao brewDao, UserDao userDao) {
        this.brewDao = brewDao;
        this.userDao = userDao;
    }

    @PreAuthorize("hasRole('USER')")
    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(path = "/breweries", method = RequestMethod.GET)
    public List<Brewery> listBreweries(Principal principal) {
//        if (this.getLoggedInUserId(principal) != id) {
//            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Unauthorized.");
//        }
//        if (this.userDao.validateUserId(id)) {
            return this.brewDao.listBreweries();
//        } else {
//            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid User Id.");
//        }
    }

    @PreAuthorize("hasRole('USER')")
    @ResponseStatus(HttpStatus.OK)
    @RequestMapping(path = "/breweries/{id}", method = RequestMethod.GET)
    public Brewery getBreweryById(@PathVariable int id, Principal principal) {
        Brewery newBrewery = this.brewDao.getBreweryById(id);
//        if (newBrewery == null) {
//            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Brewery NOT found");
//        } else if ((newBrewery.getTo_id() == this.getLoggedInUserId(principal)) || (newBrewery.getFrom_id() == this.getLoggedInUserId(principal))){
            return newBrewery;
//        } else {
//            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Unauthorized");
//        }
    }
}
