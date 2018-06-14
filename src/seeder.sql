USE adlister_db;

INSERT INTO users( username, email, password) VALUES
  ('eanesy','ooveeryy@ft.com','FOAhEI4h'),
  ('tschultzez','swanklinz@ifeng.com','YXPHoRuPWqt'),
  ('gwendover10','cstorrier10@quantcast.com','ArkD7dRPxq'),
  ('lladloe11','aneedham11@nsw.gov.au','5c2MXvg81'),
  ('esyers12','tsenior12@washingtonpost.com','ZhNgpIi'),
  ('cfoden13','ochoake13@dailymotion.com','c6ezDz0V'),
  ('knorthover14', 'gdonaghie14@discovery.com','hUUdVbGO'),
  ('jhartridge15','lruller15@dailymotion.com','Y8Fd5zQ'),
  ('bzarb16','dkrolle16@cafepress.com','3hzXj87nKKz'),
  ('tstruijs17','pgrelak17@51.la','lP8x2LPA'),
  ('ealbarez18','gdivis18@businessweek.com','2SfZaJDVD'),
  ('dtort19','tsiegertsz19@time.com','ufSCF5UVPuv5'),
  ('bconerding1a','sparnham1a@irs.gov','VWtoq8V'),
  ('dmcgillivrie1b','eleser1b@utexas.edu','CCVsKYz'),
  ('bhakey1c','ebullingham1c@slate.com','0bHBaOkRjj'),
  ('cmeigh1d','ctimms1d@edublogs.org','iyEX4mlSBorL');



INSERT INTO categories (category) VALUES
  ('Helped Wanted'),
  ('Services'),
  ('Auto'),
  ('Free'),
  ('Electronics'),
  ('Household Items'),
  ('Furniture'),
  ('Apparel'),
  ('Children'),
  ('Men'),
  ('Women'),
  ('Miscellaneous');


INSERT INTO ads (user_id, title, description, price) VALUES
  (10,'Babysitter','Babysitter with CPR training looking for weekend jobs to watch your kids', 7.49),
  (4, 'Rug', '12 by 10 gray geometric design rug nearly new', 84.96),
  (12,'Free couch', 'Couch is on the curb come get it', 0.00),
  (8, 'stamps', 'Various stamps for sale to add to your collection', 15.60 ),
  (6, 'blue corolla', '2000 Toyota corolla used cheap', 93.85),
  (15,' Air Jordan ', 'Selling my pair of Air Jordan 1 Black and Gold size 11, rare to find', 246.32),
  (2, 'ballet lessons', 'Experienced ballet instructor with ov3r 12 years experience. Let me teach your child the love of dance', 83.50),
  (13, 'pet sitter', 'Need pet sitter to watch my cat over the weekend' , 23.21),
  (5, 'truck','used toyota tacoma 1998 good condition 134,000 miles', 4.55),
  (14, 'power drill', 'unused power drill set with all attachments' , 44.23),
  (12, 'baby clothes', 'baby girl clothes from newborn to 18 months dresses, oneies, and many outfits' , 82.30),
  (7, 'Costume jewelry', 'Vintage styled tear drop necklace', 39.92),
  (1,'puppies', 'Cute poodle puppies for sale, come see ', 53.90),
  (14, 'nanny', 'Desperate need for livein nanny for 6 month old',  82.63),
  (4, 'lawn service', 'Need help with 4 acres over growing' , 59.95),
  (7, 'blender', 'Cheap cheap blender mint green color vintage', 26.94),
  (8, 'Beanie Babies', 'Getting rid of collection come get the lot', 48.49),
  (4, 'work boots', 'Never used steel toe camel colored work boots size 10', 22.58),
  (12, 'dresser', 'cherry wood chester drawer dresser real wood',45.79),
  (6, 'sound system', 'Bose auto sound system ' ,16.81),
  (10,'RayBan','Fancy name brand sunglasses ', 77.49);


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 1 mollis Lorem ipsum $52.99 10 Curabitur Lorem ipsum dolor sit amet, consectetuer adipiscing elit. $65.81 2 luctus Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed $71.53 4 Duis Lorem ipsum dolor sit amet, consectetuer adipiscing $58.79 15 sit Lorem ipsum $19.25 13 malesuada Lorem ipsum dolor sit $61.63 1 id Lorem $22.26 11 quam Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed $86.35 8 eu Lorem ipsum dolor sit amet, $73.43 4 ullamcorper Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur $60.84 10 nec Lorem ipsum dolor sit amet, consectetuer $63.68 6 non Lorem ipsum dolor sit $81.63 13 dolor. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. $7.01 9 elit, Lorem ipsum dolor sit amet, consectetuer adipiscing $42.68 15 lorem, Lorem ipsum dolor sit amet, consectetuer adipiscing elit. $40.41 4 Suspendisse Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed $45.67


  INSERT INTO ad_categories(ad_id, category_id) VALUES
  (1,2),
  (2,7),
  (2,6),
  (3,7),
  (3,4),
  (4,12),
  (5,3),
  (6,10),
  (6,8),
  (7,2),
  (8,1),
  (9,3),
  (10,5),
  (11,9),
  (12,11),
  (12,8),
  (13,12),
  (14,1),
  (15,1),
  (16,5),
  (16,6),
  (17,9),
  (18,10),
  (19,7),
  (20,3),
  (20,5),
  (21,8);




