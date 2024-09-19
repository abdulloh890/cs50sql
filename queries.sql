-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database
--temporary table for my unfiltered database--

create table books_temp (
    Id integer,
    Name text,
    RatingDist1 numeric,
    pagesNumber numeric,
    RatingDist4 numeric,
    RatingDistTotal numeric,
    PublishMonth numeric,
    PublishDay numeric,
    Publisher text,
    CountsOfReview numeric,
    PublishYear numeric,
    Language text,
    Authors text,
    Rating numeric,
    RatingDist2 numeric,
    RatingDist5 numeric,
    ISBN numeric,
    RatingDist3 numeric,
    PRIMARY KEY("Id")
);

--importing data from csv to books_temp--
--.import --csv --skip 1 mfa.csv collections--

.import --csv --skip 1 book1-100k.csv books_temp

--now we insert neccessary columns to our very created tables in our database--
insert into "books" ("Id", "Name", "pagesNumber", "Language")
select "Id", "Name", "pagesNumber", "Language" from "books_temp";

insert into "Ratings" ("book_id", "Rating", "CountsOfReview")
select "Id", "Rating", "CountsOfReview" from "books_temp";

insert into "Publishers" ("id", "book_id", "PublishDay", "PublishMonth", "PublishYear")
select "Id", "Id", "PublishDay", "PublishMonth", "PublishYear" from "books_temp";

insert into "Authors" ("id", "book_id", "Authors")
select "Id", "Id", "Authors" from "books_temp";

--lets drop books_temp table--
drop table books_temp;

--time to filter some data--
--updating and deleteing wrong values in publishers table--

delete from Publishers
where PublishMonth > 12;


