# Why this project?

I have some experience of databases from prior to the Makers course. I feel like I can interact with a database using SQL and I understand how databases work. I would like a challenge that will check my understanding but also make me practice my modelling of a database. So I am giving this a go!

## To set up the project

- `git clone`
- `bundle install`
- `run database scripts`
- `CREATE DATABASE DIARY_MANAGER;`
- run `01_create_diary_entry_table.sql` to create the diary_entries table

## To run the project

- `rackup -p 4567`
- `http://localhost:4567/diary`

## To run the tests

- navigate to the root directory for the project
- run `rspec` to run the unit and feature tests

## My approach and design

### What I have done so far
- Modelled the domain before building - identified the CRCs, the database design and the associations
- Created a basic app that will communicate to the DB both to insert and display

## To do next
- Create a test database for RSpec and tear it down before each test
- Make a proper display - currently only titles - understand what the connection actually returns
- Allow for special characters in the input - currently "Here's my code" breaks the SQL
- Check re vulnerabilites. Because the user can currently insert straight into the SQL, this could allow someone to hack the database?
- Build further tables and try more complex queries in display (i.e. build out the other user stories)


# Daily Diary Application

Mini project exploring how databases work.

## Description

I enjoy keeping a daily diary, and I want to store this online in my very own 'Daily Diary' application.

As a busy coach I'm a bit short on time, so I've provided user stories below so you can build one for me. Your challenge is to build a 'Daily Diary' application that uses Sinatra together with a PostgreSQL to store diary entries, and has a browser-based user interface.

I've included some extra functionality options, so the user requirements are split into 'Must have', 'Should have'  and 'Could have'.

If you can think if any other cool features then feel free to add them 😃

To get feedback on your approach, please submit a Code Review Request by the end of the week.


## Additional Guidance

- This mini project should be used to help you reflect on your learnings from this week.
- You should remember to test-drive your development, and use the Object Oriented Design principles you have learnt so far.
- Don't forget that your project will need a good README, including:
  - instructions for setting up the databases, including table setup steps.
  - instructions for how to run tests
  - instructions for running the application
  - overview of your approach and design

## User Stories

### Must Have

```
As a user
So that I can keep a daily diary
I want to be able to add a new Diary Entry
```

```
As a user
So that I can identify my entry in future
I want to give each Diary Entry a title
```

```
As a user
So that I can browse my previous entries
I want to see a list of Diary Entry Titles
```

```
As a user
So that I can read my previous entries
I want to click on a title to see the full Diary Entry
```

### Should Have

```
As a user
So that I can correct an error
I want to be able to edit the Diary Entry
```

```
As a user
So that I can keep my diary tidy
I want to be able to delete a Diary Entry
```

```
As a user
So that I can reflect on a previous diary entry
I want to be able add a Comment to a Diary Entry
```

```
As a user
So that I can see my past reflections
I want to see associated Comments when viewing a Diary Entry
```

### Could Have

```
As a user
So that I can make entries easier to browse
I want to be able to add Tags to an Entry
```

```
As a user
So that I can see different types of entry
I want to be able to filter Diary Entries by Tag
```
