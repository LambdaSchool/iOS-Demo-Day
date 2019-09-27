# iOS Demo Day

**7 minutes/team**

* 4 minute presentation (5 minute hard cap)
* 3 minutes of questions

We have 12 teams presenting today — please practice your presentation with a timer (as a team), and make sure you fit within the time limit.

## Requirements

Fork and clone this repository and tag your TL and instructor on your Pull Request.

Add your: 

1. Slide deck (4 required slides in Keynote)
2. Video demo (2 minutes max), share YouTube video link
3. Answer all the questions

The video demo is for sharing your work on your portfolio, but it is also a fallback if you have a technical issue during demo time.

## Required Slides (Add your Keynote to your PR)

1. App Name / Team Slide
2. Elevator Pitch
3. Your #1 Feature (Customer facing — what can I do with your app?)
4. Future Goals

## Slide Requirements

1. 40 pt font minimum
2. Prefer concise words using 3-6 bullets (Don't write sentences/paragraphs)
3. Do the squint test (can you read the text if you squint, if so, make the font bigger)
4. Images are always welcome

### Optional Slides

1. Blooper: What's a funny bug or blooper? (screenshots/GIFs please)
2. Revenue Model: If the app was your sole source of income, how would you monetize it?

## Questions (Answer inline)

1. What was your favorite feature to implement? Why?
Implementing dynamically populating table view and its sections were my favorite feature to implement because it was more compmlicated than I first thought, and I spent the most of my time on it.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?
My number one obstacle was to send modal controller instance from one table view to a different table view that is on a different tab. I tried to use segues, and delegates and protocols, but I could not find a way to actually trigger the segue or the function. Although it is not a suguested way, I used singleton method to globally declare the modal controller instance, and was able to use single instance throughout different views on different tabs.

3. Are you proud of a code file? Why?
Yes. My project is organized such that similar files are grouped together. Each class does its own job and its own job only

4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)
Most of the restaurants receive tips and it is divided among the employees. Often times, tips are not divided equally, and depends on each employees. It may take some time to manually calculate correct amount of tip for each employees. However with this app, tips are automatically calculated with just few touches.

5. What is your #1 feature?
Distribute the tip accordingly to the percentage of employees who have worked for that day.

6. What are you future goals?
Implement "hours worked" so that the tip calculation is based on the number of hours each employee has worked and their percentage.
Upgrade the log to be better formatted and contain more in-depth information.

## Links (Add your links)

* YouTube demo video: https://youtu.be/sr3pBD7oNUM
* Code: https://github.com/GiPyoK/Tip-Splitter
* Trello: `<insert trello board here>`
* Test Flight: `<insert beta signup link here>`

## Presentation Flow

Plan on having one person present the slides and live demo. Please practice your presentation in front of a mirror or with your team 2-5 times. Have the app running and visible in QuickTime so you can quickly transition between slides and live demo.

* App Name / Team Slide (30 seconds)
* Elevator Pitch Slide (30 seconds)
* Your #1 Feature (30 seconds)
* Live Demo (2 minutes)
* Future Goals (30 seconds)
* Questions (3 minutes)
