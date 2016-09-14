#Learn How to Program

## Ruby on Rails - Basics

A clone  

By Maldon Meehan & Cory Olson

## Description
learnhowtoprogram.com is powered by a fairly simple Rails app. Rebuild it today with your partner. Include integration testing with Capybara for all interactions in your browser, especially clicking on links and making new chapters/sections/lessons.

* First, work on CRUD/L functionality for lessons. A lesson has a name and some text content. Don't worry about videos and cheat sheets.

Also, take care of the Previous lesson link.

* Then, add sections: a section has many lessons. List out sections in the table of contents, along with the lessons inside them. Make the table of contents completely expanded - don't worry about the JavaScript that lets you expand and collapse sections. When you create a lesson, provide a drop-down list of all the sections, so that the user can choose which section it's in. (If you didn't get to drop-downs before, do a web search for html drop-down mdn to learn how to make them in HTML.)
* Next, add chapters: a chapter has many sections.
* Make sure that the table of contents displays the lessons in the order of their number attribute. Try a default scope and the Active Record #order method.

## Setup/Installation Requirements

```
$ git clone https://github.com/maldonmeehan/lh2p.git
```

Install required gems:
```
$ bundle
```

Run Postgres:
```
$ postgres
```

Open a new window and run:
```
$ rake db:create && rake db:migrate && rake db:test:prepare
```
```
$ rails s
```

Navigate to `http://localhost:3000` in your browser of choice.

## Known Bugs

No known bugs at this point

## Support and contact details

If you have any questions please feel free to contact Maldon on github

## Technologies Used

* Ruby on Rails
* Postgres

### License

MIT License

Copyright (c) 2016, **Maldon Meehan, Epicodus**
