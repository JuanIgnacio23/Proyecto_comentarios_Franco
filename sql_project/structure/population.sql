-- INSERCCION DE DATA

-- INSERCCION DE DATA

USE comentarios_google;

SET GLOBAL local_infile = true;

-- categorias 6 records
INSERT INTO comentarios_google.categorias
(nombre_categoria)
VALUES
("familiar"),
("fast food"),
("estilo buffet"),
("tematico"),
("take away"),
("gourmet");


-- Usuarios 40 records
INSERT INTO comentarios_google.usuarios
(nombre_usuario, total_comentarios)
VALUES
("Ali Gallet",149),
("Ansell Jaye",57),
("Jessey Krale",28),
("Bartholomeus Maryin",127),
("Everett Rosenstock",20),
("Audre Ketts",43),
("Towney Blencoe",128),
("Eunice Buddock",62),
("Alonso Rive",80),
("Hewet Drissell",124),
("Callie Crane",24),
("Abbie Rebillard",66),
("Bordie Juara",40),
("Win MacNockater",17),
("Minda Donhardt",126),
("Chlo Prover",40),
("Anders Steers",57),
("Roberta Blacker",110),
("Donnamarie Baynham",111),
("Garnette Kollas",99),
("Consuelo Risbridge",45),
("Noak Middle",123),
("Loretta Cantos",117),
("Shayna Evert",14),
("Salli Chittey",86),
("Margaretta Axston",81),
("Tim Noweak",117),
("Onida Mallia",50),
("Rey Rusted",24),
("Onfre Orrock",35),
("Pepe Gurys",36),
("Odetta Griffin",79),
("Hadria MacColm",146),
("Neely Chotty",83),
("Albertine Blanc",136),
("Alberto Orcas",52),
("Margaretta Gentzsch",144),
("Valentin Lightowler",94),
("Maryjane Face",105);


-- Restaurantes 40 records
INSERT INTO comentarios_google.restaurantes
(nombre_restaurante, direccion, region, rating, total_comentarios, id_categoria)
VALUES
("Torp Inc","8130 Fair Oaks Plaza",1,2.4,63,1),
("Marquardt-Wisoky","36 Saint Paul Way",4,2.3,74,2),
("Cummings", "Wyman and Russel",2,2,5,3),
("Franecki Group","9086 Dakota Hill",3,4.9,100,2),
("Morar-Hyatt","00004 Leroy Circle",3,2.8,34,2),
("Kuhlman", "Herzog and Fisher",1,2,3,1),
("Kerluke Group","79556 Sauthoff Point",2,4.0,98,2),
("Conn-Bauch","78003 Dixon Court",2,4.8,58,4),
("Jakubowski-Smith","3303 Nelson Center",4,4.5,59,3),
("Rohan-Ratke","23 Spaight Pass",2,1.8,21,5),
("Gleason", "Considine and Flatley",1,3,2,5),
("Satterfield LLC","05 Grover Point",4,1.7,77,3),
("Fisher LLC","61 East Parkway",2,3.7,34,6),
("Johnson LLC","9263 Monument Junction",3,4.6,43,3),
("Hermann and Sons","6 Thompson Center",3,1.7,8,1),
("Will-Shanahan","026 Schurz Road",2,3.6,6,2),
("Mitchell LLC","00 Muir Lane",4,1.7,49,5),
("Goodwin-Botsford","53990 Farragut Junction",1,3.4,43,5),
("Leannon-Kutch","31 Manitowish Lane",1,3.8,46,1),
("Kilback-Dooley","50577 Homewood Avenue",4,3.2,45,2),
("Corkery", "Shields and Schimmel",1,2,4,2),
("Emard"," Marvin and Kutch",1,1,3,6),
("Legros and Sons","01658 Manufacturers Point",3,1.9,22,2),
("Crist and Sons","11 Riverside Alley",2,2.6,59,2),
("Kassulke", "Keeling and Von",1,1,8,5),
("Gulgowski Inc","1901 Gateway Point",2,3.9,65,2),
("Keefe", "Hilpert and Fisher",1,2,3,2),
("Vandervort"," Cassin and Ziemann",1,1,3,2),
("Kautzer Inc","156 Sachtjen Park",3,4.6,28,2),
("Altenwerth LLC","367 Schmedeman Junction",2,2.5,39,6),
("Trantow"," Leuschke and Medhurst",2,1,4,4),
("Lindgren-Swift","228 Forest Run Drive",1,1.4,55,1),
("Carter-Wehner","4146 Pennsylvania Plaza",1,3.2,66,6),
("Bernier"," Wilderman and Dickinson",3,2,5,4),
("Ferry Group","84318 Sommers Hill",4,3.2,60,2),
("Osinski", "Veum and Muller",4,3,58,6),
("Collins", "Bauch and Thompson",1,3,4,3),
("Bauch Inc","00813 Mallard Street",3,1.5,77,4),
("Deckow-Hamill","644 Bowman Circle",2,1.4,89,3);


-- comentarios 40 records
INSERT INTO comentarios_google.comentarios
(id_restaurante, id_usuario, rating, comentario, votos_comentario)
VALUES
(20,25,1,"Phasellus in felis. Donec semper sapien a libero. Nam dui.",94),
(19,10,3,"In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.",36),
(6,29,1,"Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.",87),
(2,11,3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.",34),
(4,32,1,"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",98),
(35,27,4,"Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.",92),
(4,2,3,"Fusce consequat. Nulla nisl. Nunc nisl.",1),
(35,3,5,"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.",67),
(19,21,4,"Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.",92),
(27,25,4,"Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.",4),
(15,33,5,"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",28),
(8,5,4,"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",61),
(10,25,1,"Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.",69),
(12,21,1,"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.",26),
(11,37,4,"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.",79),
(23,12,3,"Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.",87),
(23,21,4,"Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.",6),
(17,20,4,"Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.",85),
(11,34,1,"Phasellus in felis. Donec semper sapien a libero. Nam dui.",75),
(14,7,2,"Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.",10),
(35,7,2,"Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.",74),
(32,35,2,"Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.",43),
(2,29,5,"Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.",76),
(20,23,2,"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",78),
(31,35,5,"Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.",58),
(34,23,5,"Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.",43),
(29,4,1,"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.",97),
(14,6,1,"Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.",32),
(34,5,5,"Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.",96),
(31,3,5,"Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.",34),
(39,17,3,"Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.",17),
(25,15,5,"Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.",93),
(38,25,5,"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.",16),
(14,11,1,"Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.",54),
(8,24,5,"Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.",21),
(8,10,4,"Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.",1),
(13,37,2,"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.",54),
(3,1,2,"Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.",12),
(9,28,5,"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.",48),
(10,24,3,"Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.",84);

USE comentarios_google;

SET GLOBAL local_infile = true;

-- categorias 6 records
INSERT INTO comentarios_google.categorias
(nombre_categoria)
VALUES
("familiar"),
("fast food"),
("estilo buffet"),
("tematico"),
("take away"),
("gourmet");


-- Usuarios 40 records
INSERT INTO comentarios_google.Usuarios
(nombre_usuario, total_comentarios)
VALUES
("Ali Gallet",149),
("Ansell Jaye",57),
("Jessey Krale",28),
("Bartholomeus Maryin",127),
("Everett Rosenstock",20),
("Audre Ketts",43),
("Towney Blencoe",128),
("Eunice Buddock",62),
("Alonso Rive",80),
("Hewet Drissell",124),
("Callie Crane",24),
("Abbie Rebillard",66),
("Bordie Juara",40),
("Win MacNockater",17),
("Minda Donhardt",126),
("Chlo Prover",40),
("Anders Steers",57),
("Roberta Blacker",110),
("Donnamarie Baynham",111),
("Garnette Kollas",99),
("Consuelo Risbridge",45),
("Noak Middle",123),
("Loretta Cantos",117),
("Shayna Evert",14),
("Salli Chittey",86),
("Margaretta Axston",81),
("Tim Noweak",117),
("Onida Mallia",50),
("Rey Rusted",24),
("Onfre Orrock",35),
("Pepe Gurys",36),
("Odetta Griffin",79),
("Hadria MacColm",146),
("Neely Chotty",83),
("Albertine Blanc",136),
("Alberto Orcas",52),
("Margaretta Gentzsch",144),
("Valentin Lightowler",94),
("Maryjane Face",105);


-- Restaurantes 40 records
INSERT INTO comentarios_google.Restaurantes
(nombre_restaurante, direccion, region, rating, total_comentarios, id_categoria)
VALUES
("Torp Inc","8130 Fair Oaks Plaza",1,2.4,63,1),
("Marquardt-Wisoky","36 Saint Paul Way",4,2.3,74,2),
("Cummings", "Wyman and Russel",2,2,5,3),
("Franecki Group","9086 Dakota Hill",3,4.9,100,2),
("Morar-Hyatt","00004 Leroy Circle",3,2.8,34,2),
("Kuhlman", "Herzog and Fisher",1,2,3,1),
("Kerluke Group","79556 Sauthoff Point",2,4.0,98,2),
("Conn-Bauch","78003 Dixon Court",2,4.8,58,4),
("Jakubowski-Smith","3303 Nelson Center",4,4.5,59,3),
("Rohan-Ratke","23 Spaight Pass",2,1.8,21,5),
("Gleason", "Considine and Flatley",1,3,2,5),
("Satterfield LLC","05 Grover Point",4,1.7,77,3),
("Fisher LLC","61 East Parkway",2,3.7,34,6),
("Johnson LLC","9263 Monument Junction",3,4.6,43,3),
("Hermann and Sons","6 Thompson Center",3,1.7,8,1),
("Will-Shanahan","026 Schurz Road",2,3.6,6,2),
("Mitchell LLC","00 Muir Lane",4,1.7,49,5),
("Goodwin-Botsford","53990 Farragut Junction",1,3.4,43,5),
("Leannon-Kutch","31 Manitowish Lane",1,3.8,46,1),
("Kilback-Dooley","50577 Homewood Avenue",4,3.2,45,2),
("Corkery", "Shields and Schimmel",1,2,4,2),
("Emard"," Marvin and Kutch",1,1,3,6),
("Legros and Sons","01658 Manufacturers Point",3,1.9,22,2),
("Crist and Sons","11 Riverside Alley",2,2.6,59,2),
("Kassulke", "Keeling and Von",1,1,8,5),
("Gulgowski Inc","1901 Gateway Point",2,3.9,65,2),
("Keefe", "Hilpert and Fisher",1,2,3,2),
("Vandervort"," Cassin and Ziemann",1,1,3,2),
("Kautzer Inc","156 Sachtjen Park",3,4.6,28,2),
("Altenwerth LLC","367 Schmedeman Junction",2,2.5,39,6),
("Trantow"," Leuschke and Medhurst",2,1,4,4),
("Lindgren-Swift","228 Forest Run Drive",1,1.4,55,1),
("Carter-Wehner","4146 Pennsylvania Plaza",1,3.2,66,6),
("Bernier"," Wilderman and Dickinson",3,2,5,4),
("Ferry Group","84318 Sommers Hill",4,3.2,60,2),
("Osinski", "Veum and Muller",4,3,58,6),
("Collins", "Bauch and Thompson",1,3,4,3),
("Bauch Inc","00813 Mallard Street",3,1.5,77,4),
("Deckow-Hamill","644 Bowman Circle",2,1.4,89,3);


-- comentarios 40 records
INSERT INTO comentarios_google.comentarios
(id_restaurante, id_usuario, rating, comentario, votos_comentario)
VALUES
(20,25,1,"Phasellus in felis. Donec semper sapien a libero. Nam dui.",94),
(19,10,3,"In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.",36),
(6,29,1,"Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.",87),
(2,11,3,"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.",34),
(4,32,1,"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",98),
(35,27,4,"Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.",92),
(4,2,3,"Fusce consequat. Nulla nisl. Nunc nisl.",1),
(35,3,5,"In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.",67),
(19,21,4,"Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.",92),
(27,25,4,"Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.",4),
(15,33,5,"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",28),
(8,5,4,"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",61),
(10,25,1,"Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.",69),
(12,21,1,"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.",26),
(11,37,4,"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.",79),
(23,12,3,"Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.",87),
(23,21,4,"Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.",6),
(17,20,4,"Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.",85),
(11,34,1,"Phasellus in felis. Donec semper sapien a libero. Nam dui.",75),
(14,7,2,"Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.",10),
(35,7,2,"Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.",74),
(32,35,2,"Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.",43),
(2,29,5,"Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.",76),
(20,23,2,"Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.",78),
(31,35,5,"Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.",58),
(34,23,5,"Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.",43),
(29,4,1,"Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.",97),
(14,6,1,"Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.",32),
(34,5,5,"Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.",96),
(31,3,5,"Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.",34),
(39,17,3,"Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.",17),
(25,15,5,"Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.",93),
(38,25,5,"In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.",16),
(14,11,1,"Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.",54),
(8,24,5,"Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.",21),
(8,10,4,"Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.",1),
(13,37,2,"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.",54),
(3,1,2,"Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.",12),
(9,28,5,"Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.",48),
(10,24,3,"Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.",84);


