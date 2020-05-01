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

* App Name: `Clamtown Crossfit`
* Team: `Scott Harris`
* Github Code: `https://github.com/scottharris86/Clamtown-Crossfit`
* Github Proposal: `https://github.com/LambdaSchool/ios-build-sprint-project-proposal/pull/76`
* Trello/Github Project Kanban: `https://github.com/scottharris86/Clamtown-Crossfit/projects`
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image

![feed](Simulator Screen Shot - iPhone 11 Pro Max - 2020-05-01 at 12.17.39.png)



## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

`player view controller. it was very hard to mix auto layou and frame together`

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

    `geting duration when fideo changed`
  
3. Share a chunk of code (or file) you're proud of and explain why.

`  @objc private func handlePan(_ gestureRecognizer : UIPanGestureRecognizer) {
guard gestureRecognizer.view != nil else {return}
let piece = gestureRecognizer.view!
// Get the changes in the X and Y directions relative to
// the superview's coordinate space.
let translation = gestureRecognizer.translation(in: piece.superview)
if gestureRecognizer.state == .began {
// Save the view's original position.
self.initialCenter = piece.center
}
// Update the position for the .began, .changed, and .ended states
if gestureRecognizer.state != .cancelled {
// Add the X and Y translation to the view's original position.
let newCenterX = initialCenter.x + translation.x
let newCenter = CGPoint(x: newCenterX, y: initialCenter.y + translation.y)
if let superview = piece.superview {
if newCenterX > superview.bounds.maxX {
player?.pause()
player = nil
self.willMove(toParent: nil)
self.view.removeFromSuperview()
self.removeFromParent()
dismiss(animated: false, completion: nil)
return
}
}

piece.center = newCenter
}
else {
// On cancellation, return the piece to its original location.
piece.center = initialCenter
}
}`
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

    `an app for gym member to still workout at home with instruction of a coach`
  
5. What is your #1 feature?

    `video feed and player`
  
6. What are you future goals?

`auth. and different workout programs`

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
