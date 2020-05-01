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

* App Name: `Calorie Tracker`
* Team: `Vincent Hoang`
* Github Code: `https://github.com/system787/Calorie-Tracker`
* Github Proposal: `https://github.com/LambdaSchool/ios-build-sprint-project-proposal/pull/73`
* Trello/Github Project Kanban: `n/a`
* Test Flight Signup (Recommended): `n/a`
* YouTube demo video (Recommended): `n/a`

## Hero Image

`https://i.imgur.com/Jskmv0h.png`

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

    `The object controller with two separate lists to overcome the shortcomings of a late feature change was the most fun feature to implement because it was such a "hacky" solution`

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

`My biggest obstacle was translating a SQLite database handler from another language into Swift. I had the workings of a database but the foreign keys were not functioning as I needed a table to relate the meal objects created to when they were eaten so that way I could add a favorites section and sort the objects various ways, as well as making a chronological history tab.`
  
3. Share a chunk of code (or file) you're proud of and explain why.

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "addMealSegue":
            guard let addMealViewController = segue.destination as? MealDetailViewController else {
                os_log("Unexpected destination: %@", log: OSLog.default, type: .error, "\(segue.destination)")
                return
            }
            addMealViewController.delegate = self
            
        case "showMealSegue":
            guard let mealDetailViewController = segue.destination as? MealDetailViewController else {
                os_log("Unexpected destination: %@", log: OSLog.default, type: .error, "\(segue.destination)")
                return
            }
            
            guard let selectedViewCell = sender as? TodayViewCell else {
                os_log("Unexpected sender: %@", log: OSLog.default, type: .error, "\(sender ?? "No sender available")")
                return
            }
            
            guard let indexPath = tableView.indexPath(for: selectedViewCell) else {
                os_log("The selected cell is not being displayed by the table", log: OSLog.default, type: .error)
                return
            }
            
            let meal = mealController.todayMeals[indexPath.row]
            
            mealDetailViewController.meal = meal
            mealDetailViewController.delegate = self
            
        default:
            os_log("Unexpected segue identifier: %@", log: OSLog.default, type: .error, "\(segue.identifier ?? "No segue available")")
            return
        }
        }
        
I quite like how I used logging to help myself potentially debug instead of just crashing out the application with fatalError(). In a production application I would actually go further and implement more exception handling so the user experience is better.
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

`This app lets you keep track of your meals by simply giving it a name, the calories amount, and adding a picture. You can also set your calorie goals per day so that you can see where you're at and what your goal is.`
  
5. What is your #1 feature?

    `Clean and intuitive design`
  
6. What are you future goals?

`Implement my original idea of using a SQLite database since it has much better performance and scalability than using a plist file to store data.`

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
