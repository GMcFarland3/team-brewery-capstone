package com.techelevator.model;

public class Beer {
    private int beer_id;
    private int brewId;
    private String name;
    private String type;
    private String description;
    private String abv;
    private String image;

    public int getBeerId() {
        return beer_id;
    }

    public void setBeerId(int beer_id) {
        this.beer_id = beer_id;
    }

    public int getBrewId() {
        return brewId;
    }

    public void setBrewId(int brew_id) {
        this.brewId = brew_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAbv() {
        return abv;
    }

    public void setAbv(String abv) {
        this.abv = abv;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
