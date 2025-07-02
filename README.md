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
- username:string
- email:string
- country:string
- prefecture:string
- age:integer
- has_many posts
- has_many comments