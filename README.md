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

* Github Code: https://github.com/maybemichael/Unit1-Build-Week-Countdown-App
* Github Proposal: https://github.com/LambdaSchool/ios-build-sprint-project-proposal/pull/35
* Trello/Github Project Kanban: `<insert trello board here>`
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): https://youtu.be/ZiYYNBblATA

## Hero Image

https://placeit.net/f1732638306df3

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

Adding the date in different date components counting down is really cool. I had no idea how I would do that at first but new thats what I wanted and what it needed to be. It was surprisingly not very hard once I figured it out how you can do it.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

My number one obstacle I fixed was making it display the correct date. It actually had been an issue until literally last night when I finally figured it out. I even had Spencer try and help as well as all of the TL's multiple times, without any luck. Essentially I was using DateFormatter() to format the date to the user's current timezone which it would make into a string and put it into the text fields. I would then convert it back to a date using DateFormatter() again and the time would be off by 8 hours (difference between my timezone and GMT). I didnt realize that you cannot convert dates back and fourth using DateFormatter() from Dates to Strings without it altering the original Date. Now that sounds fairly obvious when I explain it like that but it certainly had me stumped all week as well as multiple other people.
  
3. Share a chunk of code (or file) you're proud of and explain why.

*Chunk of code I am proud of*

func getEventDate(date: Date, time: Date) -> Date {
    var mergedComponents = DateComponents()
    let calendar = Calendar.current
    let dateComponents = calendar.dateComponents([.day, .month, .year], from: date)
    let timeComponents = calendar.dateComponents([.second, .minute, .hour], from: time)

    mergedComponents.second = timeComponents.second
    mergedComponents.minute = timeComponents.minute
    mergedComponents.hour = timeComponents.hour
    mergedComponents.day = dateComponents.day
    mergedComponents.month = dateComponents.month
    mergedComponents.year = dateComponents.year

    guard let updatedEventDate = calendar.date(from: mergedComponents) else { return date }
    return updatedEventDate
}

*Chunk of code I am proud of*

I felt like having a big date picker in the middle of a view doesn't look good. You also don't see many apps on  the app store that use the date picker like that. Thanks to Spencer I was able to figure out how to have a date picker pop up when the user taps on the textField. Since I wanted the user to be able to select dates really far out, as in many years, one date picker would not work and require the user to have to scroll for way to long without being able to tell for certain what year they were on. So i made one text field that pulled up a date only date picker and another that did time only. Both are actual full dates but to the user they only see it as a date and a time. I found a really cool way to merge different date components from different dates into one date.
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

The countdown app is an app where users can countdown to important events in their lives. The goal of the app is to keep you informed on much time there is until your event occurs, as well as provide you with a way constantly check and keep yourself excited about the upcoming event. You can also pick dates in the past to see how long it has been since a specific time or event, and as long as you dont delete the events you create, as soon as the event has passed the app begins to count up and can keep you informed on time since your event.
  
5. What is your #1 feature?

I feel the number one feature is the detailed view of any specific countdown you create, this allows you to see every different increment of time for your countdown.
  
6. What are you future goals?

I felt like I ran out of time to complete a lot of things I wanted to get done. I would like to implement preset themes as well as a way for the user to make their own theme as well as include a picture from their own camera roll. I also would like to implement notifications and some additional settings features to provide additional customization of the users personal countdowns.

## Required Slides (Add your Keynote to your PR)

1. App Name / Team Slide
2. Elevator Pitch
3. Your #1 Feature (Customer facing — what can I do with your app?)
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

I would probably think advertisement would be the best way to monetize the app because there is about 1000 different free countdown apps on the app store, so I couldn't see anyone paying money for the app. Many of the countdown apps I downloaded for inspiration had advertisements in them.

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
