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
    VALUES (2, 'BlueMoon', '3750 Chestnut Pl', '', 'Colorado', 'CO', '80216', ' (303) 728-2337', 'https://www.bluemoonbrewingcompany.com/en-US', 'M-F 2-11', 'no history', 'https://pbs.twimg.com/profile_images/1528785473329672193/P2Qd-1Be_400x400.jpg');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
    VALUES (2, 'brinkbrewing', '5905 Hamilton Ave.', '', 'Cincinnati', 'OH', '45224', '(513) 882-3334', 'https://www.brinkbrewing.com/', 'M-F 2-11', 'no history', 'https://assets.untappd.com/site/beer_logos_hd/beer-3334486_8d9e4_hd.jpeg');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
VALUES (2, 'Rhinegeist', '1910 Elm St', '', 'Cincinnati', 'OH', '45202', '(513) 381-1367', 'https://www.rhinegeist.com/', 'M-F 2-11', 'Known for craft beers and rooftop bar', 'https://assets.untappd.com/site/brewery_logos_hd/brewery-69953_77723_hd.jpeg');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
VALUES (2, 'Tafts Ale House', '1429 Race St', '', 'Cincinnati', 'OH', '45202', '(513) 334-1393', 'https://www.taftsalehouse.com/', 'M-F 2-11', 'Located in a historic church with diverse beer selection', 'https://brewingpersuasionscom.files.wordpress.com/2020/08/tafts.jpg?w=1024');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
VALUES (2, 'Woodburn', '2800 Woodburn Ave', '', 'Cincinnati', 'OH', '45206', '(513) 407-3947', 'https://www.woodburnbrewery.com/', 'M-F 2-11', 'Located in the historic East Walnut Hills neighborhood', 'https://assets.untappd.com/site/brewery_logos_hd/brewery-223460_8bb24_hd.jpeg');

INSERT INTO public.breweries(user_id, name, address, address2, city, state_abbr, zip_code, phone, website, operation_hours, history, image)
VALUES (2, 'Braxton Brewing', '27 W 7th St', '', 'Covington', 'KY', '41011', '(859) 261-5600', 'https://www.braxtonbrewing.com/', 'Varies, check their website for details', 'Easily accessible from Cincinnati with a variety of craft beers', 'https://findvectorlogo.com/wp-content/uploads/2020/02/braxton-brewing-company-vector-logo.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (1,'Happy Amber', 'Hoppy Amber Ale', 'Caramel, Floral, Bready', '6.0%', 'https://madtree.com/wp-content/uploads/2023/01/Happy-Amber_Can-Render.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (1,'Legendary Lager', 'Lager', 'Classic & Crisp', '4.2%', 'https://madtree.com/wp-content/uploads/2023/01/Legendary-Lager.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (1, 'Holly Days', 'India Pale Ale', 'Pine, Citrus, Hoppy', '6.8%', 'https://madtree.com/wp-content/uploads/2023/01/Holly-Days_Can-Render.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (1, 'Ziegler', 'Oktoberfest Lager', 'Toasty, Smooth, Rich Malt', '5.7%', 'https://madtree.com/wp-content/uploads/2023/01/Ziegler_Can-Render.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (1, 'Shade', 'Tart Fruit Ale', 'Fruity, Refreshing, Slightly Tart', '4.0%', 'https://dydza6t6xitx6.cloudfront.net/ci-madtree-shade-tart-fruit-ale-880eda814e972e52.jpeg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (2,'Leisure Time', 'Lager', 'smooth, crisp and refreshing American craft lager brewed patiently with 100% barley', '5.0%', 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_1498/https://hiwirebrewing.com/wp-content/uploads/2022/11/LeisureTimeLager_front_Mockup.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (2,'Mountain Water', 'Easy Drinking Ale', 'Bright and citrusy with major slushy-in-the-sunshine energy vibes from lemon and lime.', '4.5%', 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_397,h_1030/https://hiwirebrewing.com/wp-content/uploads/2021/09/mtn-wtr_front-397x1030.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (2, 'Zirkusfest', 'Oktoberfest', 'Oktoberfest lager without the heavy finish.', '6.0%', 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_1498/https://hiwirebrewing.com/wp-content/uploads/2022/01/zirk-2022.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (2, 'Elated', 'Winter IPA', 'India Pale Ale that doesn’t lack for pine and citrus peel notes from Michigan Chinook & Idaho 7 hops balanced by sticky caramel and toasted bread flavors from a carefully crafted malt bill.','5.5%', 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_1498/https://hiwirebrewing.com/wp-content/uploads/2022/01/elated-front.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (2, 'Lo-Pitch', 'Hazy IPA', 'Juicy American hops and a light malt bill make Lo-Pitch the perfect pairing for sandy shores, mountain tops, or backyard hangs', '5.5%', 'https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_397,h_1030/https://hiwirebrewing.com/wp-content/uploads/2021/08/lopitch_front-397x1030.png');



COMMIT TRANSACTION;
