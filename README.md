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

* App Name: Simple Home Calculator
* Team: Wyatt: Harrell and Christopher DeVito
* Github Code: https://github.com/LambdaSchool/iOS-Demo-Day/pull/27
* Github Proposal: https://github.com/LambdaSchool/ios-build-sprint-project-proposal/pull/66
* Trello/Github Project Kanban: https://trello.com/b/rwONe6Di/simple-mortgage-calculator
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image

`<Post one screenshot in an iPhone Simulator frame or an iPhone 11 Pro render using placeit.com>`

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

One of my favorite features to implement was the charts in the Mortgage Calculator. I enjoy learning new things, and this definitely required me to dig in a bit and learn how to set up a pie chart using Charts. Researching how to change the font (color and currency formatting) and add a center text was a fun challenge. 

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

The coding itself went smoothly, and I didn't run into any errors or bugs other than when I copied a view controller and set up IBOutlets resulting in duplicated connections. But this didn't take long to correct. The biggest obstacle that I encountered was with github merging. One of my merge attempts had conflicts resulting from Wyatt and myself adding a similar structure of files and github not being sure if we meant both or just one set to be in the project. While I tried to fix this on my own, we ended up needing help from Spencer, who showed us how to tell github we needed both files. And when we deleted one of the files because it wasn't necessary, he also showed us how to delete the reference to that file in the build order. 
  
3. Share a chunk of code (or file) you're proud of and explain why.

        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let mortgage = mortgageLoanArray[indexPath.row].1
            let mortgageType = mortgage.mortgageType
            if mortgageType == "Mortgage" {
                self.performSegue(withIdentifier: "LoadSavedLoanSegue", sender: nil)
            } else if mortgageType == "ARM" {
                self.performSegue(withIdentifier: "LoadARMSegue", sender: nil)
            }
        }

    Rather than share code related to the above mentioned pie charts, this is another bit of code that I needed to do some research to figure out. I had already set up my load files vc to be a tableviewcontroller, so when I finished with building the adjustable rate mortgage feature, I realized that I needed the load screen to segue to the correct results screen based on the type of the mortgage. This function in the tableview allowed me to set up an action when clicking the cell, and gave me a way to test for the type of mortgage and selecting a segue based on the test. As much as getting pretty pie charts, this was really exciting to figure out and make work. 
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

This app will help you with many aspects of your homebuying process. You can use the "Cost of Living" feature to get a good feel for how your cost of living will change if you are moving to a new state. You can also use the "Can I Buy" feature to determine how much, if any, house you can buy in your budget. And you can use the mortgage calculator feature to compare various loans to see what options will be best. In addition, you can view quick homebuying tips which can help you along the way. 
  
5. What is your #1 feature?

The #1 feature is the mortgage calculator itself. 
  
6. What are you future goals?

    API integration to keep cost of living statistics relevant
    Refinance calculator for refinancing a pre-existing mortgage

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
