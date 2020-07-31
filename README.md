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

* App Name: `GIFer`
* Team: `Vincent Hoang`
* Github Code: `https://github.com/system787/GIFer`
* Github Proposal: `https://github.com/LambdaSchool/ios-build-sprint-project-proposal/pull/99`
* Trello/Github Project Kanban: `n/a`
* Test Flight Signup (Recommended): `n/a`
* YouTube demo video (Recommended): `n/a`

## Hero Image

`https://i.imgur.com/Jskmv0h.png`

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

    `I liked the process of finding out how to retrieve a collection of live photos and working with an app cache since it was an entirely self-driven learning process`

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

`2020-07-31 11:03:58.084249-0700 GIFer[2631:686642] *** Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'Error copying image to create gif'
 I I was struggling due to using an external library since there is no inbuilt system to convert live photos to gifs
 I I was not able to fix this bug.
`
  
3. Share a chunk of code (or file) you're proud of and explain why.

private func getAssetThumbnail(_ asset: PHAsset, for cell: CreateCollectionViewCell) {
        let options = PHLivePhotoRequestOptions()
        let manager = PHImageManager.default()
        
      manager.requestLivePhoto(for: asset,
                             targetSize: CGSize(width: 80.0, height: 80.0),
                             contentMode: .aspectFit,
                             options: options,
                             resultHandler: { result, _ -> Void in
                                
                                if let result = result {
                                    cell.setLivePhoto(livePhoto: result)
                                }
      })
}

Took a while to figure out how to load assets from PhotoKit
    
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

`This app lets you turn your motion photos into a GIF so you can share via text or facebook and let other people see your motion photos`
  
5. What is your #1 feature?

`Not working.`
  
6. What are you future goals?

`Revisit the PhotoKit API to figure out why .mov files generates from livephotos don't work but .mov files recorded natively do`

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
