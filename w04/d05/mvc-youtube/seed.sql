DROP TABLE IF EXISTS video;

CREATE TABLE video (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  url VARCHAR(255)
);

INSERT INTO video (title , description, url) VALUES ('The Chaos President Cold Open - SNL' , 'President Donald Trump (Alec Baldwin) speaks with Sarah Huckabee Sanders (Aidy Bryant), Mayor Carmen Yulín Cruz (Melissa Villaseñor) of San Juan, Jeff Sessions (Kate McKinnon) and Senator Chuck Schumer (Alex Moffat).', 'https://www.youtube.com/embed/7e4vFMJmBIc');
INSERT INTO video (title , description, url) VALUES ('Jacuzzi Lifeguard - SNL' , 'A man (Will Ferrell) tries to relax in a jacuzzi but a loud, hyperactive lifeguard (Jim Carey) ruins it with every tool of the lifeguard trade - rules, a bullhorn and finally "rescuing" him from a life threatening foot cramp. Aired 05/18/96', 'https://www.youtube.com/embed/_d2XfUXn0kY');
INSERT INTO video (title , description, url) VALUES ('Top 5 Myths About Batman' , 'Were going through all the Batman comics (like year one, knightfall, the killing joke, the Dark Knight Returns, Arkham Asylum, The Long Halloween), Animated Series, Movies (like Dark Knight), and video games to find out the truth behind these Batman Myths. Has Batman ever killed? Does he use guns? Is money a superpower? was he created by Bob Kane? These answers and many more!', 'https://www.youtube.com/embed/XecVNFcsbQI');
INSERT INTO video (title , description, url) VALUES ('Red Dead Redemption 2: Official Trailer #2' , 'The all-new trailer for Red Dead Redemption 2, the story of outlaw Arthur Morgan and the Van der Linde gang as they rob, fight and steal their way across the vast and rugged heart of America in order to survive. Coming Spring 2018 to PlayStation 4 and Xbox One systems.', 'https://www.youtube.com/embed/F63h3v9QV7w');