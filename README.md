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

* App Name: PillBox
* Team: Nichole Davidson & Harmony Radley
* Github Code:  https://github.com/NicholeD/PillBox-Unit-1-Build-Project
* Github Proposal: https://github.com/NicholeD/ios-build-sprint-project-proposal
* Trello/Github Project Kanban: https://trello.com/b/9XJChWP3/pillbox-ios-unit1-build-project
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image
 placeit.com is under construction

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

    Our favorite feature that we implemented within our project would have to be how it is easily accessible to add a prescription with everything you would need to remember to take it.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

    Our #1 obstacle would have to be adjusting to our reality of this app compared to what our ideals and ideas are. We realized that we can't control certain limitations we faced this week and that we should aim only for most viable product and check our egos at the door.
  
3. Share a chunk of code (or file) you're proud of and explain why.

    This code may be simple but it was satisfying to get it to work with only a few tweaks. 
     func updateViews() {
        guard let prescription = prescription else { return }
        
        prescriptionNameLabel.text = prescription.name
        prescriptionTakenDate.text = "\(dateFormatter.string(from: date))"
        
        let image = prescription.taken ? UIImage(named: "checked") : UIImage(named: "unchecked")
        
        prescriptionTakenBox.setImage(image, for: .normal)
    }
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

    This icon on your phone that has a Pill on it. If you click on the pill you are able to create a medication and supplement list to help remind yourself when to take your medicine. You are able to add how often to take it and can add as many medications and supplements as you need. Once you take the medication or supplement you can check that box so the next time you open the app you know you already took it.
  
5. What is your #1 feature?

   Our #1 feature is the ability to check what medication you have already taken for the day. 
  
6. What are you future goals?

  -  An alert feature to be able to remind you when to take your medication without having to set an alert elsewhere. 
  -  An informational history of medications and supplements taken. You can also see if any dosages were missed.
  -  A dark mode option. 

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
