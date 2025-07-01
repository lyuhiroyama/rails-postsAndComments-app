# Data model planning

Posts table
- id:integer
- created_at:datetime
- updated_at:datetime
- title:string [present, unique, 4-50 chars]
- body:text [present]
- has_many comments

Comments table
- id:integer
- created_at:datetime
- updated_at:datetime
- body:text [present]
- post_id:integer [present]
- belongs_to post