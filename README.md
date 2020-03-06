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

* App Name: `<De Duping>`
* Team: `<Lydia Zhang>`
* Github Code: `<https://github.com/art4everyan/Bulid1DeDupingApp>`
* Github Proposal: `<https://github.com/art4everyan/ios-build-sprint-project-proposal>`
* Trello/Github Project Kanban: `<https://trello.com/b/KwI3K0bv/de-dupe>`
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image

`<In the folder>`

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

`<The hamming distance calculation, it is happy to see math and coding work together to make some project thats actually useful.>`

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

`<The mutiple image picker bug, I set two enties for two image picker to one variable. Of course, the second image will be picked too while I picked the first one, then I used an if statement to assign them to the picker one at a time. >`
  
3. Share a chunk of code (or file) you're proud of and explain why.

    `<
    func convert(image1: Data, image2: Data) -> [String] {
        let newImage1 = resize(image: UIImage(data:image1)!, targetSize: CGSize(width: 300,height: 300))
   
        let newImage2 = resize(image: UIImage(data:image2)!, targetSize: CGSize(width: 300,height: 300))
        
        let image_1 = newImage1.pngData()
        let image_2 = newImage2.pngData()
        let image1Data = image_1?.base64EncodedString()
        let image2Data = image_2?.base64EncodedString()
        

        return [image1Data!, image2Data!]
    }
    func hamming (image1: Data, image2: Data) -> Double? {
        let compare = convert(image1: image1, image2: image2)
        
        let compare_1 = compare[0]
        let compare_2 = compare[1]
        
        guard !compare_1.isEmpty, !compare_2.isEmpty else {
            return nil
        }
        let count1 = compare_1.count
        let count2 = compare_2.count
        
        
        var w1Iterator = compare_1.makeIterator()
        var w2Iterator = compare_2.makeIterator()
        var distance = 0
        let totalCount = Double(count1 + count2)

        var result: Double?
        
        while let w1Char = w1Iterator.next(), let w2Char = w2Iterator.next()  {
            distance += (w1Char != w2Char) ? 1 : 0
            let percentDigit: Double = (totalCount - Double(distance)) / totalCount
            let percent: Double = percentDigit * 100
            result = percent
            }
        
        return result
        
    }
    
    The function one is to convert image to data of base64EncodedString while resizing them, the function two is looking into these data and compare them in a parallel way to reduce calculation speed.>`
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

`<An image similarity test app using hamming distance to calculate pixel data between two images. >`
  
5. What is your #1 feature?

`<Percentage of similarity shown.>`
  
6. What are you future goals?

    `<I want to make the album picker work to search duplicates in album>`

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
