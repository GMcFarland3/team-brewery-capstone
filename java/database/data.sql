BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
	VALUES (2, 'Griffin brew', '123 Main Street', '', 'Hamilton', 'OH', '45011', '5135555555', 'www.griffinbrew.com', 'Sun-Thur 2-11 | Fri-Sat 2-12', 'no history', '');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
    VALUES (2, 'Jack brew', '987 High Street', '', 'Cincinnati', 'OH', '45242', '5135555550', 'www.jackbrew.com', 'Sun-Thur 2-11 | Fri-Sat 2-12', 'no history', '');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
	VALUES (2, 'Logan brew', '456 First Street', '', 'Cincinnati', 'OH', '45202', '5135555554', 'www.loganbrew.com', 'Sun-Thur 2-11 | Fri-Sat 2-12', 'no history', '');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
	VALUES (2, 'Matt brew', '222 Second Street', '', 'Hamilton', 'OH', '45013', '5135555556', 'www.mattbrew.com', 'Sun-Thur 2-11 | Fri-Sat 2-12', 'no history', '');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
    VALUES (2, 'Curtis brew', '555 Third Street', '', 'Dayton', 'OH', '45232', '5135555557', 'www.curtisbrew.com', 'Sun-Thur 2-11 | Fri-Sat 2-12', 'no history', '');

COMMIT TRANSACTION;
