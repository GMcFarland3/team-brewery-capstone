BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
	VALUES (2, 'MadTree', '3301 Madison Rd', '', 'Cincinnati', 'Ohio', '45209', '5135555555', 'https://madtree.com/', 'M-F 2-11', 'no history', 'https://d2pxm94gkd1wuq.cloudfront.net/BreweryLogos/Standard/568634387.madtree.logo.green-squarepng.png');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
    VALUES (2, 'HI-Wire', '4600 Beech Street, Suites 100 & 300', '', 'Cincinnati', 'OH', '45242', '(513) 930-4050', 'www.HI-Wire.com', 'M-F 2-11', 'no history', 'https://beerstreetjournal.com/wp-content/uploads/Hi-Wire-Brewing-Logo.png');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
	VALUES (2, 'StreetSide', '4003 Eastern Ave', '', 'Cincinnati', 'OH', '45202', '(855) 762-7880', 'www.StreetSide.com', 'M-F 2-11', 'no history', 'https://i0.wp.com/www.craftbeerjoe.com/wp-content/uploads/2017/09/streetside-logo-lrg.png?fit=400%2C152&ssl=1');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
	VALUES (2, 'FretBoard', '5800 Creek Rd', '', 'Hamilton', 'OH', '45013', ' (513) 914-4677', 'https://www.fretboardbrewing.com/', 'M-F 2-11', 'no history', 'https://assets.simpleviewinc.com/simpleview/image/upload/crm/cincyregion/fretboard-logo_4296F194-5056-B3A8-498F3A8268F21539-4296f0065056b3a_4297013a-5056-b3a8-49dd1e77fc024616.jpg');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
    VALUES (2, 'BlueMoon', '3750 Chestnut Pl', '', 'Colorado', 'CO', '80216', ' (303) 728-2337', 'https://www.bluemoonbrewingcompany.com/en-US', 'M-F 2-11', 'no history', 'https://static.wikia.nocookie.net/beer/images/f/fd/Blue-moon.jpg/revision/latest?cb=20110120192943');


COMMIT TRANSACTION;
