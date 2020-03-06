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

* App Name: `Brad Diroff`
* Team: `Brad`
* Github Code: `https://github.com/HeyBradMadeIt/groupit`
* Github Proposal: `https://github.com/LambdaSchool/iOS-Demo-Day/pull/26`
* Trello/Github Project Kanban: `<None>`
* Test Flight Signup (Recommended): `<None>`
* YouTube demo video (Recommended): `<None>`

## Hero Image

`<Post one screenshot in an iPhone Simulator frame or an iPhone 11 Pro render using placeit.com>`

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

    `The counting of orders because it's fun`

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

`Not using Firebase... data doesn't persist, but works as intended by updating structs (should have used classes in hindsight though)`
  
3. Share a chunk of code (or file) you're proud of and explain why.

    `    func joinAnOption(user: User, option: Option) {
        
        if let index = everything.users.firstIndex(where: {$0.name == user.name}){
            everything.users[index].choices.append(option)
            
        }
        
        if let newIndex = everything.times.firstIndex(where: {dateToString($0.arrival) == dateToString(option.time)}){
            if let deepIndex = everything.times[newIndex].options.firstIndex(where: {$0.restaurant.name == option.restaurant.name}) {
               
                everything.times[newIndex].options[deepIndex].users.append(user)
                
                
                
                for aUser in everything.times[newIndex].options[deepIndex].users {
                    if let aUserIndex = everything.users.firstIndex(where: {$0.name == aUser.name}) {
                        if let deepestIndex = everything.users[aUserIndex].choices.firstIndex(where: {$0.restaurant.name == option.restaurant.name}) {
                            everything.users[aUserIndex].choices[deepestIndex].users.append(aUser)
                        }
                    }
                }
                
                if everything.times[newIndex].options[deepIndex].optionCount >= 3 {
                    let lastTime = everything.times[newIndex].options[deepIndex]
                    everything.times = [Timing(arrival: lastTime.time, completed: true, options: [lastTime], theDate: lastTime.time)]
                    for theUser in lastTime.users {
                        if let userIndex = everything.users.firstIndex(where: {$0.name == theUser.name}) {
                            everything.users[userIndex].finalChoice = lastTime
                            everything.users[userIndex].choices = [lastTime]
                        }
                    }
                    
                    if let lastIndex = everything.users.firstIndex(where: {$0.name == user.name}) {
                        everything.users[lastIndex].finalChoice = lastTime
                        everything.users[lastIndex].choices = [lastTime]
                    }
                    
                }
            }
        }
    }`
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

    `This app makes it easier for groups of people to choose where to eat by seeing all the options visually and choosing 5 places you'd like to go, then automatically scheduling it as a notification when 3 people can agree on a place`
  
5. What is your #1 feature?

    `The collectionview showing all the different options of places at different times`
  
6. What are you future goals?

    `Adding Firebase and a few other features, and then putting this in the App Store`

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
