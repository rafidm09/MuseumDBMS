DROP DATABASE IF EXISTS FMUSEUM;
CREATE DATABASE FMUSEUM; 
USE FMUSEUM;


CREATE TABLE `fmuseum`.`art_object` (
  `Id_no` INT NOT NULL,
  `Artist_name` VARCHAR(100) NOT NULL,
  `Year` INT NULL,
  `Title` VARCHAR(60) NULL,
  `Description` VARCHAR(500) NULL,
  `Country_of_origin` VARCHAR(45) NULL,
  `Epoch` INT NULL,
  `EName` VARCHAR(90) NULL,
  PRIMARY KEY (`Id_no`));
 
  
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('1', 'Benedetto da Rovezzano', '1524', 'Angel Bearing Candlestick', 'This is a pair of bronze angels bearing candlesticks.', 'Italian', '1524', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('2', 'Pietro Torrigiano', '1510', 'Portrait bust of john fisher, Bishop of rochester', 'The subject was traditionally identified as John Fisher, Bishop of Rochester', 'Italian', '1510', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('3', 'Attributed to George Gower', '1567', 'Elizabeth I(The Hampden portrait)', 'Elizabeth I(The Hampden portrait)', 'British', '1567', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('4', 'Unknown', '1505', 'Henry VII', 'Henry VII', 'Netherlandish', '1505', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('5', 'After lucas de heere', '1595', 'Allegory of the tudor dynasty', 'Allegory of the tudor dynasty', 'Netherlandish', '1595', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('6', 'Attributed to Affabel Partridge', '1562', 'Ewer', 'Ewer', 'British', '1562', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('7', 'Juan FernÃ¡ndez, El Labrador\"\"', '1636', 'Still Life with Four Bunches of Grapes', 'Pliny the Elderâ€™s origin story of eye-deceiving illusionism and creative competition', 'Spanish', '1636', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('8', 'Samuel van Hoogstraten', '1666', 'Trompe l\'Oeil Still Life', 'Van Hoogstraten specialized in the quodlibet (Latin for whatever you please), a seemingly random assortment of objects that typically contains verbal and visual witticisms about art, artists, patrons, and politics.Â ', 'Dutch', '1678', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('9', 'Juan Gris', '1913', 'Violin and Engraving', 'A picture-within-a-picture attached to a board or wall was a favorite motif of trompe lâ€™oeil artists.', 'Spanish', '1913', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('10', 'Jefferson D. Chalfant', '1890', 'Which is Which?', 'Chalfant pasted a U.S. stamp onto canvas and placed next to it a hand-painted double, with identical sawtooth edges and paper-thin relief.', 'American', '1890', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('11', 'Tournai', '1780', 'Coffeepot', 'Typically, the miniature faux prints depict landscapes with buildings and tiny figures; delicately executed cast shadows make the paper appear to lift', 'Belgian', '1780', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('12', 'Niderviller', '1774', 'Dessert plate', 'Typically, the miniature faux prints depict landscapes with buildings and tiny figures; delicately executed cast shadows make the paper appear to lift', 'French', '1774', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('13', 'Â Pablo Picasso', '1914', 'Glass, Newspaper, and Die', 'Picasso constructed this relief inside a shallow wooden box', 'Spanish', '1914', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('14', 'Â Pablo Picasso', '1914', 'The Absinthe Glass', 'In an age when sculpture usually meant allegorical figures and portrait busts, Picassoâ€™s life-size rendering of a glass of alcohol was shocking for its banality.Â ', 'Spanish', '1914', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('15', 'Dr. Abner Landrum', '1820', 'Bottle', 'Bottle', 'American', '1820', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('16', 'Unrecorded Edgefield District potter', '1850', 'Jug', 'Jug', 'American', '1850', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('17', 'Unrecorded Edgefield District potter', '1836', 'Pitcher', 'Pitcher', 'American', '1852', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('18', 'Simone Leigh', '2021', 'Large jug', 'Large jug', 'American', '2022', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('19', 'Robert Pruitt', '2019', 'Birth and Rebirth and Rebirth', 'Birth and Rebirth and Rebirth', 'American', '1850', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Epoch`, `EName`) VALUES ('20', 'Pow  Erfigure', '1850', 'Power figure', 'Power figure', '1515', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('21', 'Michelangelo dit Michel-Ange', 'Esclave rebelle', 'Esclave rebelle', 'Italian', '1666', 'The Louvre Collections Themed Albums');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Epoch`, `EName`) VALUES ('22', 'Milo', '1513', 'Vanus de Milo', 'Aphrodite', '1767', 'The Louvre Collections Themed Albums');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('23', 'Louis-Michel', 'Denis Diderot', 'Denis Diderot', 'French', '1701', 'The Louvre Collections Themed Albums');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('24', 'Rigaud, HyacintheÂ dit aussi Rigau y Ros', '1767', 'Louis XI ', 'Louis XI ', 'French', '1767', 'The Louvre Collections Themed Albums');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Epoch`, `EName`) VALUES ('25', 'Unknown', '1701', 'document decrit', 'cone', '1724', 'The Louvre Collections Themed Albums');
INSERT INTO `fmuseum`.`art_object` (`Id_no`, `Artist_name`, `Year`, `Title`, `Description`, `Country_of_origin`, `Epoch`, `EName`) VALUES ('26', 'Judee Palestine', '1724', 'coupe', 'sur vasque ; fondation d\'une ville', 'Palestinian', '1720', 'The Louvre Collections Themed Albums');


CREATE TABLE `fmuseum`.`artist` (
  `Artist_name` VARCHAR(100) NOT NULL,
  `Date_Born` VARCHAR(100) NULL,
  `Date_Died` VARCHAR(100) NULL,
  `Country_of_origin` VARCHAR(45) NULL,
  `Epoch` VARCHAR(100) NULL,
  `Main_style` VARCHAR(100) NULL,
  `Description` VARCHAR(200) NULL,
  UNIQUE INDEX `Artist_name_UNIQUE` (`Artist_name` ASC),
  PRIMARY KEY (`Artist_name`)
);
 

INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Benedetto da Rovezzano', '1474', '1554', 'Italy', '1554', 'Sculpture', 'An Italian architect and sculptor');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Pietro Torrigiano', '1472', '1528', 'Italy', '1528', 'Sculpture', 'An Italian sculptor');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Attributed to George Gower', '1540', '1596', 'Britain', '1596', 'Painting', 'A British Painter');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Unknown', 'Unknown', 'Unknown', 'Netherland', 'Unknown', 'Unknown', 'Unknown');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('After lucas de heere', '1534', '1584', 'Netherland', '1584', 'Creative Arts', 'A Netherlandish Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Attributed to Affabel Partridge', '1551', '1580', 'Britain', '1580', 'Creative Arts', 'A Briish Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Juan Fernández, \"El Labrador\"', '1629', '1657', 'Spain', '1657', 'Unknown', 'A Spanish Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Samuel van Hoogstraten', '1627', '1678', 'Dutch', '1678', 'Unknown', 'A Dutch Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Juan Gris', '1887', '1927', 'Spain', '1927', 'Unknown', 'A Spanish Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Jefferson D. Chalfant', '1856', '1931', 'America', '1931', 'Unknown', 'An American Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Tournai', '1750', 'Unknown', 'Belgium', 'Unknown', 'Unknown', 'A Belgian Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Niderviller', '1735', '1799', 'France', 'Unknown', 'Unknown', 'A French Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Pablo Picasso', '1881', '1974', 'Spain', '1974', 'Unknown', 'A Spanish Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Dr. Abner Landrum', '1785', '1859', 'America', '1859', 'Creative Arts', 'An American Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Unrecorded Edgefield District potter', 'Unknown', 'Unknown', 'America', 'Unknown', 'Unknown', 'Unknown');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Simone Leigh', '1967', 'Unknown', 'America', 'Unknown', 'Unknown', 'An American Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Robert Pruitt', '1975', 'Unknown', 'America', 'Unknown', 'Unknown', 'An American Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Pow  Erfigure', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Michelangelo dit Michel-Ange', '1475', '1564', 'Italy', '1565', 'Unknown', 'An Italian Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Milo', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Louis-Michel', '1707', '1771', 'France', '1771', 'Unknown', 'A French Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Rigaud, Hyacinthe dit aussi Rigau y Ros', '1659', '1743', 'France', '1743', 'Unknown', 'A French Artist');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Unknown2', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown');
INSERT INTO `fmuseum`.`artist` (`Artist_name`, `Date_Born`, `Date_Died`, `country_of_origin`, `Epoch`, `Main_style`, `Description`) VALUES ('Judée Palestine', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unkown');

CREATE TABLE `fmuseum`.`painting` (
  `Id_no` INT NOT NULL,
  `Paint_type` VARCHAR(45) NULL,
  `Drawn_on` VARCHAR(45) NULL,
  `Style` VARCHAR(100) NULL,
  PRIMARY KEY (`Id_no`));
  
INSERT INTO `fmuseum`.`painting` (`Id_no`, `Paint_type`, `Drawn_on`, `Style`) VALUES ('3', 'Oil', 'canvas', 'modern');
INSERT INTO `fmuseum`.`painting` (`Id_no`, `Paint_type`, `Drawn_on`, `Style`) VALUES ('4', 'oil', 'panel', 'modern');
INSERT INTO `fmuseum`.`painting` (`Id_no`, `Paint_type`, `Drawn_on`, `Style`) VALUES ('7','oil', 'canvas', 'modern');
INSERT INTO `fmuseum`.`painting` (`Id_no`, `Paint_type`, `Drawn_on`, `Style`) VALUES ('8','oil', 'canvas', 'modern');
INSERT INTO `fmuseum`.`painting` (`Id_no`, `Paint_type`, `Drawn_on`, `Style`) VALUES ('9','oil', 'canvas', 'modern');
INSERT INTO `fmuseum`.`painting` (`Id_no`, `Paint_type`, `Drawn_on`, `Style`) VALUES ('10','oil', 'wood', 'modern');
INSERT INTO `fmuseum`.`painting` (`Id_no`, `Paint_type`, `Drawn_on`, `Style`) VALUES ('19','pastel', 'canvas', 'modern');
INSERT INTO `fmuseum`.`painting` (`Id_no`, `Paint_type`, `Drawn_on`, `Style`) VALUES ('23','oil', 'canvas', 'modern');
INSERT INTO `fmuseum`.`painting` (`Id_no`, `Paint_type`, `Drawn_on`, `Style`) VALUES ('24','oil', 'canvas', 'modern');

  
  CREATE TABLE `fmuseum`.`sculpture` (
  `Id_no` INT NOT NULL,
  `Material` VARCHAR(90) NULL,
  `Height_cm` INT NULL,
  `Weight_kg` INT NULL,
  `Style` VARCHAR(90) NULL,
  PRIMARY KEY (`Id_no`));
  
INSERT INTO `fmuseum`.`sculpture` (`Id_no`, `Material`, `Height_cm`, `Weight_kg`, `Style`) VALUES ('1', 'Bronze', '103', '178', 'European sculpture and decorative Arts');
INSERT INTO `fmuseum`.`sculpture` (`Id_no`, `Material`, `Height_cm`, `Weight_kg`, `Style`) VALUES ('2', 'Polychrome terracotta', '62', '28', 'European sculpture and decorative Arts');
INSERT INTO `fmuseum`.`sculpture` (`Id_no`, `Material`, `Height_cm`, `Weight_kg`, `Style`) VALUES ('13', 'Tin and Wood', '173', '108', 'Decorative Arts');
INSERT INTO `fmuseum`.`sculpture` (`Id_no`, `Material`, `Height_cm`, `Weight_kg`, `Style`) VALUES ('14', 'Bronze', '193', '198', 'Life reflective art');
INSERT INTO `fmuseum`.`sculpture` (`Id_no`, `Material`, `Height_cm`, `Weight_kg`, `Style`) VALUES ('20', 'Wood, Iron and Nails', '203', '298', 'Powerful Art');
INSERT INTO `fmuseum`.`sculpture` (`Id_no`, `Material`, `Height_cm`, `Weight_kg`, `Style`) VALUES ('21', 'Marble', '193', '308', 'Italian Marble Art');

CREATE TABLE `fmuseum`.`statue` (
  `Id_no` INT NOT NULL,
  `Material` VARCHAR(90) NULL,
  `Height_cm` INT NULL,
  `Weight_kg` INT NULL,
  `Style` VARCHAR(90) NULL,
  PRIMARY KEY (`Id_no`));
 
INSERT INTO `fmuseum`.`statue` (`Id_no`, `Material`, `Height_cm`, `Weight_kg`, `Style`) VALUES ('22', 'Marble', '193', '308', 'Aphrodite'); 

  CREATE TABLE `fmuseum`.`other` (
  `Id_no` INT NOT NULL,
  `Type` VARCHAR(60) NULL,
  `Style` VARCHAR(90) NULL,
  PRIMARY KEY (`Id_no`));


INSERT INTO `fmuseum`.`other` (`Id_no`, `Type`, `Style`) VALUES ('5', 'Silver', 'European decorative Arts');
INSERT INTO `fmuseum`.`other` (`Id_no`, `Type`, `Style`) VALUES ('6', 'Prints', 'European decorative Arts');
INSERT INTO `fmuseum`.`other` (`Id_no`, `Type`, `Style`) VALUES ('11', 'Porcelain', 'European decorative Arts');
INSERT INTO `fmuseum`.`other` (`Id_no`, `Type`, `Style`) VALUES ('12', 'Tin', 'Tin Glazed Earthenware');
INSERT INTO `fmuseum`.`other` (`Id_no`, `Type`, `Style`) VALUES ('15', 'Stone', 'European decorative Arts');
INSERT INTO `fmuseum`.`other` (`Id_no`, `Type`, `Style`) VALUES ('16', 'Stone', 'European decorative Arts');
INSERT INTO `fmuseum`.`other` (`Id_no`, `Type`, `Style`) VALUES ('17', 'Alkaline Stone', 'European decorative Arts');
INSERT INTO `fmuseum`.`other` (`Id_no`, `Type`, `Style`) VALUES ('18', 'Stone', 'European decorative Arts');
INSERT INTO `fmuseum`.`other` (`Id_no`, `Type`, `Style`) VALUES ('25', 'Argile', 'European decorative Arts');
INSERT INTO `fmuseum`.`other` (`Id_no`, `Type`, `Style`) VALUES ('26', 'Metallurgen-Bronze-Copper', 'European decorative Arts');



CREATE TABLE `fmuseum`.`permanent` (
  `Id_no` INT NOT NULL,
  `Date_acquired` INT NULL,
  `Status` VARCHAR(45) NULL,
  `Cost` VARCHAR(45) NULL,
  PRIMARY KEY (`Id_no`));

INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('1', '1524', 'Loan', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('2', '1510', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('3', '1567', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('4', '1505', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('5', '1595', 'Loan', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('6', '1562', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('7', '1636', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('8', '1666', 'Loan', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('9', '1913', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('10', '1890', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('11', '1780', 'Loan', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('12', '1774', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('13', '1914', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('14', '1914', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('15', '1820', 'Loan', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('16', '1850', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('17', '1852', 'Loan', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('18', '2022', 'Loan', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('19', '2019', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('20', '1850', 'On view', 'Bid');
INSERT INTO `fmuseum`.`permanent` (`Id_no`, `Date_acquired`, `Status`, `Cost`) VALUES ('21', '1515', 'Loan', 'Bid');


CREATE TABLE `fmuseum`.`borrowed` (
  `Id_no` INT NOT NULL,
  `Borrowed_from` VARCHAR(90) NULL,
  `Date_borrowed` INT NULL,
  `Date_returned` INT NULL,
  PRIMARY KEY (`Id_no`));

INSERT INTO `fmuseum`.`borrowed` (`Id_no`, `Borrowed_from`, `Date_borrowed`, `Date_returned`) VALUES ('22', 'The Louvre Museum', '1809', '1813');
INSERT INTO `fmuseum`.`borrowed` (`Id_no`, `Borrowed_from`, `Date_borrowed`, `Date_returned`) VALUES ('23', 'National Museums Recovery', '1907', '1913');
INSERT INTO `fmuseum`.`borrowed` (`Id_no`, `Borrowed_from`, `Date_borrowed`, `Date_returned`) VALUES ('24', 'National Museums Recovery', '1813', '1923');
INSERT INTO `fmuseum`.`borrowed` (`Id_no`, `Borrowed_from`, `Date_borrowed`, `Date_returned`) VALUES ('25', 'The Louvre Museum', '1935', '1943');
INSERT INTO `fmuseum`.`borrowed` (`Id_no`, `Borrowed_from`, `Date_borrowed`, `Date_returned`) VALUES ('26', 'National Museums Recovery', '1709', '1823');

CREATE TABLE `fmuseum`.`exhibitions` (
  `EName` VARCHAR(200) NOT NULL,
  `Start_date` DATE NOT NULL,
  `End_date` DATE NOT NULL,
  PRIMARY KEY (`EName`));
  
INSERT INTO `fmuseum`.`exhibitions` (`EName`, `Start_date`, `End_date`) VALUES ('The Tudors: Art and Majesty in Renaissance England', '2022-10-10', '2023-01-08');
INSERT INTO `fmuseum`.`exhibitions` (`EName`, `Start_date`, `End_date`) VALUES ('Cubism and the Trompe lâ€™Oeil Tradition', '2022-10-20', '2023-01-22');
INSERT INTO `fmuseum`.`exhibitions` (`EName`, `Start_date`, `End_date`) VALUES ('Hear Me Now: The Black Potters of Old Edgefield, South Carolina', '2022-09-09', '2023-02-05');
INSERT INTO `fmuseum`.`exhibitions` (`EName`, `Start_date`, `End_date`) VALUES ('The Louvre Collections Themed Albums', '2022-09-09', '2023-01-22');


  
 CREATE TABLE `fmuseum`.`collections` (
  `Id_no` INT NOT NULL,
  `Type` VARCHAR(45) NULL,
  `Address` VARCHAR(90) NULL,
  `Phone` INT NULL,
  `Contact_person` VARCHAR(90) NULL,
  `Description` VARCHAR(200) NULL,
  PRIMARY KEY (`Id_no`));


INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('1', 'Sculpture', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('2', 'Sculpture', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('13', 'Sculpture', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('14', 'Sculpture', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('20', 'Sculpture', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('21', 'Sculpture', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('3', 'Painting', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('4', 'Painting', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('7', 'Painting', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('8', 'Painting', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('9', 'Painting', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('10', 'Painting', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('19', 'Painting', 'The Met Fifth Avenue', '1111', 'The Met Fifth Avenue', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('23', 'Painting', 'The Louvre Museum', '1112', 'The Louvre Museum', 'The Lovre Themed Albums');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Phone`, `Contact_person`, `Description`) VALUES ('24', 'Painting', 'The Louvre Museum', '1112', 'The Louvre Museum', 'The Lovre Themed Albums');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Contact_person`, `Description`) VALUES ('5', 'Other', 'The Met Fifth Avenue', 'The Met Fifth Avenue', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Contact_person`, `Description`) VALUES ('6', 'Other', 'The Met Fifth Avenue', 'The Met Fifth Avenue', 'The Tudors: Art and Majesty in Renaissance England');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Contact_person`, `Description`) VALUES ('11', 'Other', 'The Met Fifth Avenue', 'The Met Fifth Avenue', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Contact_person`, `Description`) VALUES ('12', 'Other', 'The Met Fifth Avenue', 'The Met Fifth Avenue', 'Cubism and the Trompe lâ€™Oeil Tradition');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Contact_person`, `Description`) VALUES ('15', 'Other', 'The Met Fifth Avenue', 'The Met Fifth Avenue', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Contact_person`, `Description`) VALUES ('16', 'Other', 'The Met Fifth Avenue', 'The Met Fifth Avenue', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Contact_person`, `Description`) VALUES ('17', 'Other', 'The Met Fifth Avenue', 'The Met Fifth Avenue', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Contact_person`, `Description`) VALUES ('18', 'Other', 'The Met Fifth Avenue', 'The Met Fifth Avenue', 'Hear Me Now: The Black Potters of Old Edgefield, South Carolina');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Contact_person`, `Description`) VALUES ('25', 'Other', 'The Louvre Museum', 'The Louvre Museum', 'The Lovre Themed Albums');
INSERT INTO `fmuseum`.`collections` (`Id_no`, `Type`, `Address`, `Contact_person`, `Description`) VALUES ('26', 'Other', 'The Louvre Museum', 'The Louvre Museum', 'The Lovre Themed Albums');

CREATE TABLE `fmuseum`.`users` (
  `user_id` INT auto_increment NOT NULL,
  `username` VARCHAR(70) NOT NULL,
  `email` VARCHAR(90) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `account_type` VARCHAR(90) NOT NULL,
  `status` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`user_id`));



SELECT * FROM fmuseum.artist;
SELECT * FROM fmuseum.art_object;
SELECT * FROM fmuseum.painting;
SELECT * FROM fmuseum.sculpture;
SELECT * FROM fmuseum.other;
SELECT * FROM fmuseum.permanent;
SELECT * FROM fmuseum.borrowed;
SELECT * FROM fmuseum.exhibitions;
SELECT * FROM fmuseum.collections;
SELECT * FROM fmuseum.statue;
SELECT * FROM fmuseum.users;