CREATE TABLE final_customers
( customerid INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name CHAR(50) NOT NULL,
  address CHAR(100) NOT NULL,
  city CHAR(30) NOT NULL
);

CREATE TABLE final_orders
( orderid INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  customerid INT UNSIGNED NOT NULL,
  amount FLOAT(6,2),
  date DATE NOT NULL
);

CREATE TABLE final_videogames
(  sku CHAR(7) NOT NULL PRIMARY KEY,
   publisher CHAR(50),
   title CHAR(100),
   price FLOAT(4,2)
);

CREATE TABLE final_order_items
( orderid INT UNSIGNED NOT NULL,
  sku CHAR(13) NOT NULL,
  quantity TINYINT UNSIGNED,

  PRIMARY KEY (orderid, sku)

);
CREATE TABLE final_game_reviews
(
  sku CHAR(13) NOT NULL PRIMARY KEY,
  review TEXT
);

/* Populate the tables with INSERT */
INSERT INTO final_customers VALUES
  (NULL, "Brad Smith", "25 Oak Street", "Airport West"),
  (NULL, "Taylor Johnson", "8650 Beechwood Court", "Alexandria"),
  (NULL, "Sarah Nottingham", "27 Ashton Road", "Fort Mitchell");

INSERT INTO final_orders VALUES
  (NULL, 2, 59.99, "2017-12-10"),
  (NULL, 3, 59.99, "2016-07-29"),
  (NULL, 2, 119.98, "2016-01-05"),
  (NULL, 1, 79.99, "2011-01-20");

INSERT INTO final_videogames VALUES
  ("6191208", "Ubisoft", "Tom Clancy's Rainbow Six Siege Advanced Edition for Xbox One", 59.99),
  ("6216330", "Activision", "Call of Duty: Black Ops 4 for Xbox One", 59.99),
  ("5723319", "Nintendo", "Super Smash Bros. Ultimate for Nintendo Switch", 59.99),
  ("6259690", "Rockstar Games", "Red Dead Redemption 2: Special Edition for Xbox One", 79.99);

INSERT INTO final_order_items VALUES
  (1, "6259690", 1),
  (2, "6216330", 2),
  (2, "6191208", 1),
  (3, "5723319", 1),
  (4, "6259690", 3);

INSERT INTO final_game_reviews VALUES
  ("6191208", "I bought this game a couple of weeks ago and cannot stop playing! It has excellent graphics and really unique gameplay. I would recommend it to anyone."),
  ("6216330","Boots on the ground! I love this aspect...except in the Blackout mode, which is the shining star. The flight into the action is smooth and fast, tight gun play. Inventory management is my only gripe. Zombies is back and better than what was included in WWII. Great maps, interesting dialogue, fun characters, and plenty of great gameplay mechanics. 3 zombies maps included with launch! Multiplayer is fast paced but not the most enticing part of the game. Boots on the ground, but still more fast paced. I miss War mode from WWII, but still a decent experience. The special moves can be a tad annoying, but that's comes with the Black Ops territory."), 
  ("6259690","The long-awaited sequel to Red, Dead Redemption is the most visually stunning game I've ever played. You feel like you're watching a movie, not playing a game (until you have to shoot at some bad guys). And if violence or hunting animals doesn't appeal, you can play poker or dominoes or just go fishing (and, yes, you can even throw the fish back). Rockstar Games has created a vibrant world with just about any kind of earthly terrain or weather conditions you can imagine. Even after playing the game for MANY hours thus far, I can still be surprised...like when an alligator took out a gunman that was trying to kill me in a swamp. Or when I was besieged in the dark by some weird voodoo men painted like skeletons. And so on. If you're a fan of westerns or shooter games or hunting and mutilating animals, then Red Dead Redemption 2 is for you.");