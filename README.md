# iOS Demo Day

## Requirements

1. Fork and clone the repository
2. Create a branch for Unit1 or Unit4
3. Add your Team Name / Team Members and make a commit
            QuickScript/DahnaB
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

* App Name: `<QuickScript/DahnaB>`
* Team: `<Dahna Buenrostro>`
* Github Code: `<https://github.com/DahnaB/ios-build-sprint-project-proposal.git>`
* Github Proposal: `<https://github.com/DahnaB/ios-build-sprint-project-proposal.git>`
* Trello/Github Project Kanban: `<https://trello.com/b/Vn9Vlx4f/bw-quickscript>`
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<https://drive.google.com/file/d/1tgVQxfNdfwS89cbWESdSPTOUD-d03-vZ/view?usp=sharing>`

## Hero Image

`<Post one screenshot in an iPhone Simulator frame or an iPhone 11 Pro render using placeit.com>`

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

`My favorite feature to implement was the core functionality of having the app transcribe what the user says. It was challenging but really refreshing to see it work.`

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

`Getting the logic down for the speech to text functionality. It took a lot of trial and error to have it start and stop as I meant it to.`
  
3. Share a chunk of code (or file) you're proud of and explain why.

    `    @IBAction func exportButtonTapped(_ sender: Any) {
        
        guard let note = note else { return }
        
        let activityController = UIActivityViewController(activityItems: [note.title, note.date.stringDate(), note.body] as [Any], applicationActivities: nil)
        
        present(activityController, animated: true)
    } 
    
    because it was really awesome to see the export feature working with the key components of the model. I really favor the date extension too. It's been a real lifesaver in my projects.`
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

`Quickscript is an easy to use app for anyone. It writes notes from what you say and then helps you share them wherever you'd like. It's perfect to use for on the go thoughts or even just people who would rather not type out every single word.  `
  
5. What is your #1 feature?

`The key feature would be the speech-to-text implementation.`
  
6. What are you future goals?

`To add search/filter functionality to the saved notes.`

## Required Slides (Add your Keynote to your PR)

1. App Name / Team Slide
2. Elevator Pitch
3. Demo
4. Future Goals

    link to Slides `https://docs.google.com/presentation/d/1_1nF6fgZZLGCrRaGTdo2ZnBytC9sRpRtbdd_lvPoFRQ/edit?usp=sharing`

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
