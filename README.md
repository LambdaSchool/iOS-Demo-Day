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

* App Name: Cruise Along
* Team: Chad Rutherford
* Github Code: https://github.com/chadarutherford/CruiseAlong
* Github Proposal: https://github.com/chadarutherford/ios-build-sprint-project-proposal
* Trello/Github Project Kanban: https://trello.com/b/4dWM3WXP/cruise-along
* Test Flight Signup (Recommended): No public link yet. Waiting on Apple
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image

![alt text](https://raw.githubusercontent.com/chadarutherford/iOS-Demo-Day/Unit-4/Screenshots/map.png)

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

    The slide in menu controller. It was neat watching the animations and seeing it slide in on screen.  

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

    I could not get the map to respond to touch gestures. I removed the UIVisualEffectView away until it was needed. 
  
3. Share a chunk of code (or file) you're proud of and explain why.

            if isUITesting {
                let containerVC = ContainerViewController()
                window?.rootViewController = containerVC
                window?.makeKeyAndVisible()
            } else {
                if UserDefaults.standard.string(forKey: UserDefaultsKeys.userIdKey) == nil {
                    let loginVC = LoginViewController()
                    window?.rootViewController = loginVC
                    window?.makeKeyAndVisible()
                } else {
                    let containerVC = ContainerViewController()
                    window?.rootViewController = containerVC
                    window?.makeKeyAndVisible()
                }
            }
            
    I am proud of this code because it serves two purposes. It allows my TL to move to a different part of the app to verify my tests work. It also allows the user to move into a "logged in" or "not authenticated" state depending on the value saved in UserDefaults when they log in or at first run. 
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

Imagine going on a trip on your motorcycle only to find out your favorite GPS sent you along a route that's dangerous. At Cruise Along, we aim to fix that by utilizing TomTom's built in "avoid unpaved roads" feature to avoid dangerous situations so you can get back to enjoying what matters most, the ride!
  
5. What is your #1 feature?

    Avoiding unpaved roads for motorcycle riders
  
6. What are you future goals?

Heads up display to show the user where they are on the route and what is next.

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
