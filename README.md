# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

SELECT id, name , email, introduction FROM users;
 id |    name    |     email   |   introduction   |
----+------------+-------------+-------------------
  1 | a          |  aaa@aaa    | aaaaaaaaa 
  2 | b          |  bbb@bbb    | bbbbbbbbb
  3 | c          |  ccc@ccc    | ccccccccc 
  4 | d          |  ddd@ddd    | ddddddddd 
  5 | e          |  eee@eee    | eeeeeeeee 
  6 | f          |  fff@fff    | fffffffff 


SELECT id, user_id, title, body FROM books;
 id | user_id    |        title        | body
----+------------+---------------------+------
  1 |          2 | 蝉しぐれ            | test
  2 |          1 | 夜のピクニック      | test
  3 |          4 | ALWAYS 三丁目の夕日 | test
  4 |          2 | 忍道-SHINOBIDO-     | test
  5 |          2 | 貞子vs伽椰子        | test
  6 |          4 | 県庁おもてなし課    | test
  7 |          5 | 真夏の方程式        | test
