# iOS Demo Day

## Requirements

1. Fork and clone the repository
2. Create a branch for Unit1 or Unit4
3. Add your Team Name / Team Members and make a commit
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

* App Name: Something to Remember
* Team: Keri + Elizabeth
* Github Code: https://github.com/kerianne16/weddingBudget/tree/master
* Github Proposal: https://github.com/kerianne16/ios-build-sprint-project-proposal/tree/unit4BuildWeek
* Trello/Github Project Kanban: https://trello.com/b/qsJ5uEOK/wedding-budget
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

    Checklist, because it has notifications and we got get a better understanding of SwiftUI.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

    Merging, Paul helped us.
  
3. Share a chunk of code (or file) you're proud of and explain why.

    private func colorsOfCharts(numbersOfColor: Int) -> [UIColor] {
      var colors: [UIColor] = []
      for _ in 0..<numbersOfColor {
        let red = Double(arc4random_uniform(256))
        let green = Double(arc4random_uniform(256))
        let blue = Double(arc4random_uniform(256))
        let color = UIColor(red: CGFloat(red/255), green: CGFloat(green/255), blue: CGFloat(blue/255), alpha: 1)
        colors.append(color)
      }
      return colors
    }
    
    Everytime the use load the app the color of the pie chart changes, its random which we think it pretty cool.
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

Planning a wedding is often overwhelming, let Something to Remember help you plan the wedding of your dreams with these amazing features…

5. What is your #1 feature?

    Budgeting a wedding.
  
6. What are you future goals?

   Update the personalized page 
   Real time pie chart updating with current spending
   Connect the wedding date to a countdown notification

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
