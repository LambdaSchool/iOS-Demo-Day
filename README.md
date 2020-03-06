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

* App Name: `<SUPPort>`
* Team: `<Hector Ledesma>`
* Github Code: `<https://github.com/mazi89/Lambda-iOS-Build-Sprint-1-Medication-Tracking>`
* Github Proposal: `<https://github.com/mazi89/ios-build-sprint-project-proposal>`
* Trello/Github Project Kanban: `<https://trello.com/invite/b/kpvoyKG1/e21d5a671238876c83f40fb194a0480d/sprint-1-medication-tracker>`
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image

`<Post one screenshot in an iPhone Simulator frame or an iPhone 11 Pro render using placeit.com>`

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

`<All functionality that allowed you to edit what you created. So the actual detail view which allowed you to make changes live. Marking your group as "Taken". Turning alerts to inactive. And deleting Items updating the group's contents.>`

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

`<Everything that had to do with data persistence. Had to avoid using my custom protocol as a stored property in some objects. Ultimately though, the biggest obstacle was that my data structure would cause an endless loop of objects referencing one another (Shoutout to Jon for finding this and in the process teaching me how to use the debug tool effectively). Changing my Controllers to be global not only fixed this but greatly simplified a lot of my app's logic.>`
  
3. Share a chunk of code (or file) you're proud of and explain why.

`<class ItemController: Codable { static var itemController = ItemController() }>`
`<This and the same setup for the 2 other controllers. Setting up my controllers globally was great. If I had known about doing this from the beginnign I could've saved a vast amount of time and made my code a lot cleaner. Also it feels super cool when a class you made can be used like a built in class.>`
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

`<When you're into bodybuilding, nutrition is 70% of the battle. You must eat good, and eat a lot. But this means that sometimes it becomes super hard to get all of the nutrients you need every single day. Therefore bodybuilders rely on taking a large amount of daily supplements to maintain a healthy diet. This can sometimes become annoying to keep track of. Support allows you to keep track of all the supplements and/or medication you may need to take care of, and manage them all at once in a couple of easy steps.>`
  
5. What is your #1 feature?

`<Being reminded of all of your supplements at once by the use of groups.>`
  
6. What are you future goals?

`<A looooot more customizability for the reminders. To be able to choose which days to be reminded. To be able to set reminders for individual items. But the meat of my future goals revolves around catalogging the user's history of taken/missed items.>`

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
