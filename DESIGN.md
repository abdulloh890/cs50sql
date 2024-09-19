# Design Document

Azimjon Mirzabekov

Video overview: <URL https://youtu.be/a_QnohIOQgQ HERE>

## Scope

In this section you should answer the following questions:

* What is the purpose of your database?
The primary purpose of my database is to manage and organize information related to a Library Management System. This system can be applied in various sectors, but it is especially useful in libraries to efficiently manage book collections, user records, and borrowing activities. The goal of the database is to simplify the process of tracking books, monitoring availability, and managing user interactions. It can also serve in educational institutions, bookstores, or private collections where managing large volumes of books and tracking user activity is important.
* Which people, places, things, etc. are you including in the scope of your database?
In the scope of my database, I have included information mainly focused on books. The data I am working with comes from the Goodreads Book Datasets, which include user ratings and reviews for various books. This dataset contains details such as book titles, authors, genres, publication dates, and user ratings, which are all critical elements for a comprehensive Library Management System. By using these datasets, I can organize and analyze a large volume of book-related information while also incorporating user feedback and ratings to enhance the management system's functionality.
* Which people, places, things, etc. are *outside* the scope of your database?
One major aspect that is currently outside the scope of my database is location information. This includes both the physical location of the library or the books themselves. While the database covers key elements such as book details and user ratings, it does not track where the books are stored or their availability in different library branches or locations. This means that for now, the system is focused purely on cataloging and user engagement rather than logistical tracking like inventory or distribution across various locations.

## Functional Requirements

In this section you should answer the following questions:

* What should a user be able to do with your database?
User will be able to find any of the 100k books, they will be able to find book`s author, exact date of publication, publisher, ratings, language and, counts of reviews.
* What's beyond the scope of what a user should be able to do with your database?
most importantly books location.

## Representation

### Entities

In this section you should answer the following questions:

* Which entities will you choose to represent in your database?
books, ratings, authors, publishers.
* What attributes will those entities have?
primary foreign keys, ids, special contraints.
* Why did you choose the types you did?
I chose more general types such numeric instead of int and text instead of varchars just because
the database is small and there are no memory issues yet.
* Why did you choose the constraints you did?
I used contraints such as not null and check to reduce redundancies in moving data from csv files into my DB.

### Relationships

In this section you should include your entity relationship diagram and describe the relationships between the entities in your database.
![alt text](<Screenshot 2024-09-14 at 22.37.30.png>)
Authors and books table has many to many relationsship as books can be written by many authors.
Publishers and books table have one to many relationship.


## Optimizations

In this section you should answer the following questions:

* Which optimizations (e.g., indexes, views) did you create? Why?

I created index for books table on name column to accelarate the searching process by name of the book.
Next, Ratings index can be useful for people searching by reviews and ratings. After that, I created index for publishers table on books id column to accelerate the process of searching by publisher.
Finally, Authors index can be uselfull for individuals searching with Author names.

## Limitations

In this section you should answer the following questions:

* What are the limitations of your design?
small, lack of info about place of publication
* What might your database not be able to represent very well?
genre
