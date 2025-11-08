drop table if exists listings;
create table listings(
id bigint generated always as identity primary key,
name text,
host_id bigint,
host_name text,
neighbourhood_group text,
neighbourhood text,
latitude float,
longitude float, 
room_type text,
price money,
minimum_nights int,
number_of_reviews bigint,
last_review date,
reviews_per_month float,
calculated_host_listings_count int,
availability_365 int,
number_of_reviews_ltm int,
license text
);
copy listings(id, name, host_id, host_name, neighbourhood_group, neighbourhood, latitude, longitude,
room_type, price, minimum_nights, number_of_reviews, last_review, reviews_per_month, 
calculated_host_listings_count, availability_365, number_of_reviews_ltm, license)
from './Seattle_Airbnb_Postgresql/data/listings.csv'
delimiter ','
csv header;

drop table if exists calendar;
create table calendar(
id bigint generated always as identity primary key,
listing_id bigint references listings(id) 
	on delete cascade
	on update cascade,
"date" date,
available boolean,
price money,
adjusted_price money,
minimum_nights int,
maximum_nights bigint
);
copy calendar(listing_id, "date", available, price, adjusted_price, minimum_nights, maximum_nights)
from './Seattle_Airbnb_Postgresql/data/calendar.csv'
delimiter ','
csv header;


drop table if exists reviews;
create table reviews (
id bigint generated always as identity primary key,
listing_id bigint references listings(id)
	on delete cascade
	on update cascade,
"date" date,
reviewer_id bigint,
reviewer_name char(64),
"comments" text
);
copy reviews(listing_id, id, "date", reviewer_id, reviewer_name, "comments")
from './Seattle_Airbnb_Postgresql/data/reviews.csv'
delimiter ','
csv header;












