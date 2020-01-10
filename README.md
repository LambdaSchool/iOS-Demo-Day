# iOS Demo Day

## Requirements

1. Fork and clone the repository
2. **Add your presentation content**
    1. Slide deck (4 required slides)
    2. Links
    3. Answer all questions 
    4. YouTube demo video (1-2 min max)
3. Polish your Github Code repository
    1. Add screenshots and an overview to your GitHub Code Repository
    2. You should make that repository the "Public Portfolio" for your project
    3. Look at [John Sundell's Splash project](https://github.com/JohnSundell/Splash) for inspiration (code, images, GIFs)
4. Create a pull request (PR) and **tag your TL and Instructor**

## Links

* Github Code: https://github.com/Isvvc/App-Dev-Portfolio-Tracker
* Github Proposal: https://github.com/LambdaSchool/ios-build-sprint-project-proposal/pull/28
* Trello/Github Project Kanban: https://github.com/Isvvc/App-Dev-Portfolio-Tracker/projects/1
* YouTube demo video (Recommended): https://youtu.be/FMFgSi8typA

## Hero Image

<img src="https://github.com/Isvvc/ios-demo-day/blob/Unit4/data/20-01-10%2010-38-12%207975.png" width="281" height="609" />

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

    Allowing the user to add libraries or APIs used. I liked setting up the Core Data relationship and figuring out the cleanest way to add and remove references.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

    Editing the description and contribution text views while trying to have them dynamically resize caused a lot of issues with scrolling and adjusting cell sizes. The bugs got even worse when some of what I tried to do to force the cells to resize ended up undoing changes you made to the text view, defeating the whole purpose. I was able to fix this by adding an edit mode that made the text views a static size that could be scrolled, then when it was saved, they dynamically resized to fit the content without needing to scroll.
  
3. Share a chunk of code (or file) you're proud of and explain why.

    The code below was the segue from the app list to the app detail page. It detected whether a new app was being created or an existing app was being viewed without needing separate segues and created a prompt for the user to enter the app's Bundle ID (required for the app to be stored), dismissing if the user cancels and automatically canceling if the Bundle ID isn't valid.

```swift
    if let appDetailVC = segue.destination as? AppDetailTableViewController {
            appDetailVC.appController = appController
            if let indexPath = tableView.indexPathForSelectedRow {
                appDetailVC.app = fetchedResultsController.object(at: indexPath)
            } else {
                let alert = UIAlertController(title: "Enter the app's Bundle Identifier",
                                              message: nil,
                                              preferredStyle: .alert)

                var bundleIDTextField: UITextField?
                alert.addTextField { textField in
                    textField.placeholder = "com.example.app"
                    bundleIDTextField = textField
                }

                let cancel = UIAlertAction(title: "Cancel", style: .cancel) { _ in
                    DispatchQueue.main.async {
                        self.navigationController?.popViewController(animated: true)
                    }
                }
                let done = UIAlertAction(title: "Done", style: .default) { _ in
                    guard let bundleID = bundleIDTextField?.text else {
                        DispatchQueue.main.async {
                            self.navigationController?.popViewController(animated: true)
                        }
                        return
                    }
                    appDetailVC.bundleID = bundleID
                }

                alert.addAction(cancel)
                alert.addAction(done)

                DispatchQueue.main.async {
                    self.present(alert, animated: true, completion: nil)
                }
            }
        }
```
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

    App Dev Portfolio allows app developers to show off their apps and contributions in one place.
  
5. What is your #1 feature?

    Have a concise list of all apps you’ve contributed to in one place for easy demonstration in-person.
  
6. What are you future goals?

    Perform image fetch network calls asynchronously.  
    Cache fetched images.  
    Allow the displayed app to be opened from the portfolio.

## Required Slides (Add your Keynote to your PR)

1. App Name / Team Slide
2. Elevator Pitch
3. Your #1 Feature (Customer facing — what can I do with your app?)
4. Future Goals

## Slide Requirements

1. 50 pt font minimum
2. Be concise — don't write sentences/paragraphs (put these in your slide notes for speaking)
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
* Elevator Pitch Slide (30 seconds)
* Your #1 Feature (30 seconds)
* Live Demo (2 minutes)
* Future Goals (30 seconds)
* Questions (3 minutes)
