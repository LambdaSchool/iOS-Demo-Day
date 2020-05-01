# iOS Demo Day

## Requirements

1. Fork and clone the repository
2. Create a branch for Unit1 or Unit4
3. Add your Team Name / Team Members and make a commit

Kelson hartle

4. Create a pull request (PR) and **tag your TL and Instructor**
5. **Add your presentation content**
    1. Slide deck (4 required slides)
    2. Links
    3. Answer all questions 
    4. YouTube demo video (1-2 min max)
6. Polish your Github Code repository
    1. Add screenshots and an overview to your GitHub Code Repository
    2. You should make that repository the "Public Portfolio" for your project
    3. Look at [John Sundell's Splash project](https://github.com/JohnSundell/Splash) for inspiration (code, images, GIFs)


## Links

* App Name:  Are we there yet?
* Team:  Kelson Hartle
* Github Code: https://github.com/kelson99/IOS-Build-week-Unit-1
* Github Proposal:  https://github.com/kelson99/ios-build-sprint-project-proposal
* Trello/Github Project Kanban: https://trello.com/b/bWAqhwpa/build-week-1
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image

/Users/kelson99hartle/Desktop/Screen Shot 2020-04-30 at 5.06.27 PM.png


## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

The countdown clock.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

Creating the countdown clock.
  
3. Share a chunk of code (or file) you're proud of and explain why.

    @objc func UpdateTime(date: Date) -> Date {
        
        let timeLeftover = timeLeft(date: date)

        return timeLeftover.date ?? Date()
    }
    
    // timeleft function takes in a date and returns a datecomponents
    
    private func timeLeft(date: Date) -> DateComponents {
        
        let userCalendar = Calendar.current
        //Look into changing this function here
        let components = userCalendar.dateComponents([.hour,.minute,.month,.year,.day,.second], from: Date())
        let currentDate = userCalendar.date(from: components)
        

        let timeLeft = userCalendar.dateComponents([.day,.hour,.minute,.second], from: currentDate!, to: date)
        
        return timeLeft
        
    }
    
    ---- I am proud of this chunk of code becuase it was not related with anything we had learned during the unit and took a lot of help and effort on my part to figure out how to make it work.----
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

Have you ever wanted to know how long it will be until your next birthday, now you can know even down to the second with "Are we there yet?" the free event countdown app.
  
5. What is your #1 feature?

The ability to add multiple countdowns.
  
6. What are you future goals?

Change the table view to a collection view that you can add custom background images on the collection view cells along with a label that displays the time left on the collection view controller. As well as have customizable text throughout the app.

## Required Slides (Add your Keynote to your PR)

1. App Name / Team Slide
2. Elevator Pitch
3. Demo
4. Future Goals

## Slide Requirements

1. 50 pt font minimum
2. Be concise — don't write sentences/paragraphs (put these in your slide notes for speaking)
3. 3-6 bullets maximum per slide
4. Do the squint test (can you read the text if you squint, if so, make the font bigger)
6. Images are always welcome
7. Do the Grandma Test (Would your Grandma understand you?)

### Optional Slides

1. Blooper: What's a funny bug or blooper? (screenshots/GIFs please)
2. Revenue Model: If the app was your sole source of income, how would you monetize it?

## Presentation Format

**7 minutes/team**

* 4 minute presentation (5 minute hard cap)
* 3 minutes of questions

We have ~12 teams presenting today — please practice your presentation with a timer (as a team), and make sure you fit within the time limit.

Plan on having one person present the slides and live demo. Please practice your presentation in front of a mirror or with your team 2-5 times. Have the app running and visible (Simulator or QuickTime) so you can quickly transition between slides and live demo.

* App Name / Team Slide (30 seconds)
* Elevator Pitch Slide (60 seconds)
* Live Demo (2 minutes)
* Future Goals (30 seconds)
* Questions (3 minutes)
