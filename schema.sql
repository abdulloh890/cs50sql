-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE,
--CREATE INDEX, CREATE VIEW, etc. statements that compose it

create table "books" (
    "Id" integer,
    "Name" text,
    "pagesNumber" integer,
    "Language" text,
    PRIMARY KEY("Id")
);

create table "Ratings" (
    "id" integer,
    "book_id" integer,
    "Rating" numeric,
    "CountsOfReview" numeric,
    PRIMARY KEY("id"),
    FOREIGN KEY("book_id") REFERENCES "books"("Id")
);

create table "Publishers" (
    "id" integer,
    "book_id" integer,
    "PublishDay" numeric,
    "PublishMonth" numeric,
    "PublishYear" numeric,
    PRIMARY KEY("id"),
    FOREIGN KEY("book_id") REFERENCES "books"("Id")
);

create table "Authors" (
    "id" integer,
    "book_id" integer,
    "Authors" text,
    PRIMARY KEY("id"),
    FOREIGN KEY("book_id") REFERENCES "books"("Id")
);


--it is time to create some index
create index "books_name_index" on "books" ("Name");
create index "ratings_rating_index" on "Ratings" ("Rating");
create index "publishers_bookid_index" on "Publishers" ("book_id");
create index "authors_author_index" on "Authors" ("Author");
