# Data model planning

Posts table
- id:integer
- created_at:datetime
- updated_at:datetime
- title:string [present, unique, 4-50 chars]
- body:text [present]
- has_many comments
- belongs_to user

Comments table
- id:integer
- created_at:datetime
- updated_at:datetime
- body:text [present]
- post_id:integer [present]
- user_id:integer [present]
- belongs_to post
- belongs_to user

Users table
- id:integer
- created_at:datetime
- updated_at:datetime
- username:string [present, unique, 3-20 chars]
- email:string [present, unique, max 50 chars]
- country:string [present, max 50 chars]
- prefecture:string [present, max 50 chars]
- age:integer [present, integer only, 1-119]
- has_many posts
- has_many comments