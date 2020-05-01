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

* App Name: Gifted
* Team: Nick Nguyen
* Github Code: https://github.com/tonic2000/Gifted
* Github Proposal: https://github.com/tonic2000/ios-build-sprint-project-proposal
* Trello/Github Project Kanban: https://trello.com/b/ZlrhkI3t/counter-app
* Test Flight Signup (Recommended): 
* YouTube demo video (Recommended): 

## Hero Image

![Simulator Screen Shot - iPhone 11 Pro Max - 2020-02-06 at 12 19 17](https://user-images.githubusercontent.com/50033125/73961632-f6dd7380-48da-11ea-8729-0105cf429c5e.png)

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

    Make a gif from video.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?
lazy var filterCollectionView: UICollectionView = {
let flowLayout = UICollectionViewFlowLayout()
flowLayout.scrollDirection = .horizontal

let view = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: flowLayout) //
view.backgroundColor = .white
view.showsHorizontalScrollIndicator = false
view.showsVerticalScrollIndicator = false 
view.translatesAutoresizingMaskIntoConstraints = false
return view
}()
UICollectionViewFlowLayout not UICollectionViewLayout
  
  
3. Share a chunk of code (or file) you're proud of and explain why.

  
    ```
    override var isHighlighted: Bool {
    didSet {  toggleIsHighlighted()  }
    }
    
    private func toggleIsHighlighted() {
    UIView.animate(withDuration: 0.5,
    delay: 0,
    options: [.curveEaseOut,.transitionFlipFromLeft],
    animations: {
    self.alpha = self.isHighlighted ? 0.9 : 5.0
    self.transform = self.isHighlighted ? CGAffineTransform.identity.scaledBy(x: 2.0, y: 2.0) : CGAffineTransform.identity
    
    })
    }
    ``` 
     Add some animation when user tap on cell ```
  
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

My app is used for creating a GIF from image or video.
  
5. What is your #1 feature?

Create a GIF from image or video.
  
6. What are you future goals?

 Upload it on App Store

## Required Slides (Add your Keynote to your PR)

1. Gifted / Nick Nguyen
2. Gifted is user to create a GIF from image or video.
3.Demo and Future goals:  https://www.icloud.com/keynote-live/sc:0YKXgoDQyQMbiKkyPbs8jQ5LGmj_kzG0tv9EECpqzyNT4Z5R_pywI1cFmOEU4uhCXc8


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
