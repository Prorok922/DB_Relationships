DROP TABLE IF EXISTS NEW_SCHEMA.BOOK;

CREATE TABLE NEW_SCHEMA.BOOK (
                             ID         INTEGER      NOT NULL AUTO_INCREMENT,
                             NAME       VARCHAR(255) NOT NULL,
                             PRINT_YEAR INTEGER(4)   NOT NULL,
                             CONSTRAINT BOOK_PRIMARY_KEY PRIMARY KEY (ID)
);

DROP TABLE IF EXISTS NEW_SCHEMA.AUTHOR;

CREATE TABLE NEW_SCHEMA.AUTHOR (
                               ID          INTEGER      NOT NULL AUTO_INCREMENT,
                               FIRST_NAME  VARCHAR(255) NOT NULL,
                               SECOND_NAME VARCHAR(255) NOT NULL,
                               BOOK_ID     INTEGER      NOT NULL UNIQUE,
                               CONSTRAINT AUTHOR_PRIMARY_KEY PRIMARY KEY (ID),
                               CONSTRAINT BOOK_FOREIGN_KEY FOREIGN KEY (BOOK_ID) REFERENCES BOOK (ID)
);