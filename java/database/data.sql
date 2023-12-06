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

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (3,'Game Ball', 'Golden Ale', 'Game Ball, our golden ale, is brewed for celebrating all your favorite Cincinnati sports teams.', '5.0%', 'https://assets.untappd.com/photos/2023_11_03/efd9c575de27126cd2d40114e91d8446_640x640.jpg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (3,'Kanpai', 'Japanese Rice Lager', 'Kampai, our Japanese-style Rice Lager, made with jasmine rice and pilsner malt, will surely delight the senses and the palate.', '4.0%', 'https://assets.untappd.com/site/beer_logos_hd/beer-5599906_3b89a_hd.jpeg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (3, 'Return of the Mac', 'Blonde Ale', 'Dripping in aromatics of coconut, honey, and fresh vanilla blended together in a fresh cup of your favorite morning coffee.', '5.5%', 'https://assets.untappd.com/site/beer_logos_hd/beer-2061260_80689_hd.jpeg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (3, 'Pineapple Midwesty', 'IPA-Fruited', 'Check out this super secret, uber-limited FOURTH different variant of Midwesty, Pineapple Midwesty! This West Coast India Pale Ale is complimented by that sweet nectar of the gods, Pineapple!','7.0%', 'https://assets.untappd.com/site/beer_logos_hd/beer-5604525_c50a9_hd.jpeg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (3, 'Whos A Good Beer', 'Hazy Pale Ale', 'Whos a Good Beer? Hazy Pale Ale made with Cltra, Mosaic and El Dorado hops Is our way to help fund two local Cincinnati animal shelters', '5.0%', 'https://assets.untappd.com/site/beer_logos_hd/beer-3730048_4adfe_hd.jpeg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (4,'Vlad', 'Pilsner', 'This International-Style Pils is a recipient of many awards and is the perfect medium-body, European style lager.', '5.3%', 'https://ohio.org/static/uploads/0688y000004Qr14AAC.jpg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (4,'Peso In My Hand', 'Mexican Lager', 'Brewed with generous amounts of corn, this easy drinking Mexican-style Lager is a crowd pleaser. 2020 Cervecera Del Pacifico bronze medal winner.', '5.3%', 'https://assets.untappd.com/photos/2022_05_27/2368712711cd2faa8c8c5b769b5afb25_640x640.jpg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (4, 'Reba Strawberry', 'Blonde Ale', 'This light cream style ale infused with just the right amount of strawberry. Its bubbly and effervescent and a fan favorite', '5.3%', 'https://images.squarespace-cdn.com/content/v1/6400c622d90f2c202613ca3d/add69cc7-9c92-4412-a716-181100971e61/RebaSingleCanMock.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (4, 'Fretboard Light', 'Premium Lager', 'Perfect light lager. You can now enjoy this domestic light lager in 15 and 24 packs.','4.0%', 'https://images.squarespace-cdn.com/content/v1/6400c622d90f2c202613ca3d/035675e0-b6b7-4b83-a1e9-114359a65aaa/FretLight1920x1080V2.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (4, 'Bootsy Brewski', 'India Pale Ale', 'This light and crispy IPA is a 5 time winner of medals in the US Beer Open Championship', '7.0%', 'https://www.cincinnati.com/gcdn/presto/2019/08/05/PCIN/99ec70f7-5226-410c-b1e7-1a5e8a0eb0e1-Bootsy_6_pack.PNG');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (5,'Belgian White', 'Belgian-Style Wheat Ale', 'A wheat beer brewed with Valencia orange peel for a suble sweetness and bright, citrus aroma.', '5.4%', 'https://www.bluemoonbrewingcompany.com/sites/bluemoon/files/styles/beers/public/beers/2018-06/BlueMoon-BelgianWhite.png?itok=NZQsZ8D-');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (5,'Lightsky Tropical Wheat', 'Tropical Wheat Beer', 'A new light and refreshing wheat beer brewed with pineapple and orange peel for a lighter, exceptional taste.', '4.0%', 'https://www.bluemoonbrewingcompany.com/sites/bluemoon/files/styles/beers/public/beers/2022-03/LightSky%20Tropical_.png?itok=PHAvh_Mk');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (5, 'Lightsky', 'Citrus Wheat', 'A light and refreshing wheat beer, brewed with real tangerine peel.', '4.0%', 'https://www.bluemoonbrewingcompany.com/sites/bluemoon/files/styles/beers/public/beers/2020-02/Light%20Sky.png?itok=dHVQHOMb');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (5, 'Moon Haze', 'Hazy Pale Ale', 'Hazy brewed with dried whole oranges to infuse the flavor into the beer, creating a delicious, juicy flavor and bright color.','5.7%', 'https://www.bluemoonbrewingcompany.com/sites/bluemoon/files/styles/beers/public/beers/2021-09/Blue_Moon_Moon_Haze_Can.png?itok=RrRhjA3p');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (5, 'Mango Wheat', 'Mango Wheat Beer', 'A refreshing beer with ripe mango flavor and biscuity malt sweetness', '5.4%', 'https://www.bluemoonbrewingcompany.com/sites/bluemoon/files/styles/beers/public/beers/2018-06/BlueMoon-MangoWheat.png?itok=5mGbkI3j');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (6,'Jackpot Joey', 'Golden Ale', 'Clean, crisp, and way more crushable than its namesake. The perfect game day beer.', '5.2%', 'https://i0.wp.com/beersbeardspod.com/wp-content/uploads/2022/09/brink-jackpot-joey-rotated.jpg?resize=678%2C381&ssl=1');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (6,'Comet', 'Fresh Hopped IPA', 'Its light in body like a west coast IPA, its dank and resinous, but with notes of peach, apricot, and citrus.', '7.2%', 'https://assets.untappd.com/photos/2023_10_17/89b29c73d25376ef82ad38bbf2fee74d_640x640.jpg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (6, 'Hold The Reins', 'English Mild', 'Malty, brown British Ale. Medium body. Smooth caramel, toffee sweetness with hints of coffee and chocolate.', '5.2%', 'https://potablepastime.files.wordpress.com/2021/05/brink-hold-the-reins-og2.jpg?w=500');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (6, 'Nightbringer', 'Imperial Stout', 'Slightly bitter dark chocolate turns into a richer, smoother, creamier chocolate flavor with hints of dark caramel and coffee as this behemoth stout warms up.','10.0%', 'https://assets.untappd.com/photos/2023_09_10/377905315e27599710cce24d5211ce12_640x640.jpg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (6, 'Tropical Wheat', 'American Wheat Ale', 'Traditional American wheat ale gets loaded up with guava and pineapple, with plenty of light grain maltiness to support the island party in your mouth.', '4.9%', 'https://assets.untappd.com/photo/2023_04_19/0359a2fe3004bcb977500e41a6c830fa_c_1266485894_640x640.jpg');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (7,'Cincy Light', 'American Lager', 'A refreshingly crisp lager. This easy-drinking classic is the perfect way to celebrate the Queen City.', '4.2%', 'https://d24v69n0tr7hm9.cloudfront.net/wp-content/uploads/2023/06/10185212/CincyLight_12oz_CanRender-768x1179.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (7,'Juicy Truth', 'Juicy India Pale Ale', 'Brewed to unleash the mouthwatering, tropical notes and aromas of the generous hop bill, Juicy Truth delivers on the promise by the iconic IPA: always bold, always consistent, always fresh, always delicious. ', '6.5%', 'https://d24v69n0tr7hm9.cloudfront.net/wp-content/uploads/2022/12/31102148/JuicyTruth_CanRender-768x1179.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (7, 'Cheetah', 'Lager', 'Swift in body and mind, Cheetah sprints forward. Pure, crisp, clean.', '4.8%', 'https://d24v69n0tr7hm9.cloudfront.net/wp-content/uploads/2018/08/04022328/Cheetah_12oz_CanRender-768x1179.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (7, '93 Octane', 'Four Peel Blonde Ale', 'Slightly fruity aroma, flavor is bright sublte malt characteristics, fruity flavors, hints at orange.','6.2%', 'https://d24v69n0tr7hm9.cloudfront.net/wp-content/uploads/2018/09/03180359/Light-Beer-Color-768x1316.png');

INSERT INTO public.beers(brew_id, name, type, description, abv, image)
	VALUES (7, 'Antelope', 'Amber Lager', 'This amber lager leaps through fields of toasty, amber malts and grazes on ample cascade and crystal hops for a malt-forward, bready profile with just a hint of hop bitterness and a clean finish.', '5.0%', 'https://d24v69n0tr7hm9.cloudfront.net/wp-content/uploads/2018/09/03180411/Med-Color-Pint-768x1316.png');


COMMIT TRANSACTION;
