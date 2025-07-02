# Data model planning

(Posts table)
- id:integer
- title:string [present, unique, 4-50 chars]
- body:text [present]
- user_id:integer [present, foreign key]
- created_at:datetime
- updated_at:datetime

- belongs_to user
- has_many comments

(Comments table)
- id:integer
- body:text [present]
- post_id:integer [present, foreign key]
- user_id:integer [present, foreign key]
- created_at:datetime
- updated_at:datetime

- belongs_to post 
- belongs_to user

(Users table)
- id:integer
- username:string [present, unique, 3-20 chars]
- email:string [present, unique, max 50 chars]
- country:string [present, max 50 chars]
- prefecture:string [present, max 50 chars]
- age:integer [present, integer only, 1-119]
- created_at:datetime
- updated_at:datetime

- has_many posts
- has_many comments