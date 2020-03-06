---
typora-root-url: ../iOS-Demo-Day
---

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

* App Name: **Informed** - Mortgage Calculator
* Team: Shawn Gee
* Github Code: https://github.com/swift-student/MortgageCalculator
* Github Proposal: https://github.com/samessermanlambda/ios-build-sprint-project-proposal
* Trello/Github Project Kanban: https://trello.com/b/Fsp989ZS/mortgage-calculator
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image

![IPhone X - Black](/IPhone X - Black.jpg)

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

    My favorite feature to implement was the timeline view. It came out looking and working just as I had imagined, and I got to learn a bit about a couple scroll view delegate methods, as well as using container views and child view controllers in the storyboard.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

    My number one obstacle was working SwiftUI views into a UIKit project with storyboards. I initially had a Collection View holding my graphs, but had to swap it out for a Scroll View in order to feed my SwiftUI view models and have them update the views which were set up to implicitly animate. Also, I had to conditionally enable the animation so that I didn't get weird artifacts when the view first appeared.
  
3. Share a chunk of code (or file) you're proud of and explain why.

    ```swift
  static func monthlyAmortizationSchedule(forLoan loan: Loan) -> AmortizationSchedule {
      var balance = loan.purchasePrice ?? Calculator.purchasePrice(forLoan: loan)
      let monthlyPayment = loan.monthlyPayment ?? Calculator.monthlyPayment(forLoan: loan)
      
      balance -= loan.downPayment
      
      var schedule = AmortizationSchedule()
      
      for _ in 1...Int(loan.months) {
          let interest = (loan.monthlyRate * balance).roundedToCent(.toNearestOrAwayFromZero)
          
          let payment: Double
          let principle: Double
          
          if balance < monthlyPayment {
              principle = balance
              payment = interest + principle
          } else {
              payment = monthlyPayment
              principle = (payment - interest).roundedToCent(.toNearestOrAwayFromZero)
          }
                      
          balance -= principle
          balance = balance.roundedToCent(.toNearestOrAwayFromZero)
          schedule.append(AmortizationData(interest: interest, principle: principle, balance: balance))
      }
      
      return schedule
  }
  ```
  
  I'm not amazing with math, so I was super excited that I figured out how to calculate the monthly payment for a purchase price (or vice-versa) and then, as shown here, create a monthly amortization schedule from the loan data. I then have another function that pares this down to a yearly schedule, which is what I use to feed all of the graphs in the graph view controller.
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

    Informed is a mortgage calculator that let's you visualize up two loan options and compare them side by side so that you can make in informed decision about the mortgage you choose. Unlike many mortgage calculators that feature hard to read graphs with too much data displayed at once, Informed is centered around easy to read graphs that show you simple data over time.  

5. What is your #1 feature?

    The graphs. They make the app, as they let you see exacly what is going on over the life of the loan. 

6. What are you future goals?

    I would like to thoroughly test the app and try to get it on the app store. Beyond that, I have features in mind for future releases such as adding PMI, HOA fees, etc... , but I don't want them to take away from the simplicity of the app.

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
