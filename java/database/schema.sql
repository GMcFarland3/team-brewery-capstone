BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS breweries;
DROP  TABLE IF EXISTS usersToBreweries;
DROP  TABLE IF EXISTS beers;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(500) NOT NULL,
	role varchar(100) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE  TABLE breweries (
    brew_id SERIAL,
    user_id int NOT NULL,
    name varchar(60),
    address varchar(120),
    address2 varchar(60),
    city varchar(50),
    state_abbr varchar(10),
    zip_code varchar(10),
    phone varchar(20),
    website varchar(190),
    operation_hours varchar(100),
    history varchar(120),
    image varchar(500),
    CONSTRAINT PK_brew PRIMARY KEY (brew_id),
    CONSTRAINT FK_user FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE usersToBreweries (
    user_id int NOT NULL,
    brew_id int NOT NULL,
    CONSTRAINT FK_user FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT FK_brew FOREIGN KEY (brew_id) REFERENCES breweries(brew_id)
);

CREATE TABLE beers (
    beer_id SERIAL,
    brew_id int NOT NULL,
    name varchar(30),
    type varchar(25),
    description varchar(120),
    abv varchar(5),
    image varchar(120),
    CONSTRAINT PK_beer PRIMARY KEY (beer_id),
    CONSTRAINT FK_brew FOREIGN KEY (brew_id) REFERENCES breweries(brew_id)
);

COMMIT TRANSACTION;
