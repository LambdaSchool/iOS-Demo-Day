# iOS Demo Day

## Links

* App Name: Simple Home Calculator
* Team: Wyatt Harrell & Christopher DeVito
* Github Code: [GitHub Repo](https://github.com/wyattharrell/build-week-1)
* Github Proposal: [Proposal](https://github.com/DeVitoC/ios-build-sprint-project-proposal)
* Trello/Github Project Kanban: [Trello](https://trello.com/b/oN0CtXtD/build-week-1)

## Hero Image

![Simple Home Calculator](https://raw.githubusercontent.com/wyattharrell/iOS-Demo-Day/Unit1/SimpleHomeCalculator.png)

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

    I really enjoyed learning how to parse JSON for my *Cost Of Living* tab. It was neat being able to apply what I had learned in the previous three weeks to make objects out of that data and display it to the user. I really liked creating the UI for that tab as well.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

    My biggest hurtle was converting Excel functions for payment (PMT) and present value (PV) into Swift functions to match my *Can I Buy* output with calculations made in Excel. Thankfully, I was able to call my brother who is a finance major and he was able to walk me through the formulas.
  
3. Share a chunk of code (or file) you're proud of and explain why.

    I like how I used shouldPerformSegue() instead of a programatic segue to simply return false if the user didn't fill out all of the required text fields in the view.  
    `override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if !canProceed {
            let alert = UIAlertController(title: "All text fields are required", message: "Please complete all text fields", preferredStyle: .alert)
            let action = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            return false
        }
        return true
    }`
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

    Simple Home Calculator is the only app you need to help facilitate your home buying experience. It is full of features that make selecting a home you can afford a quick and easy process while providing you home-buying tips along the way.
  
5. What is your #1 feature?

    My number 1 feature is my *Cost of Living* tab. I am really proud of how the layout turned out and think the visuals I used for cost increases and decreases make it easy for the user to read and understand.
  
6. What are you future goals?

    Though I was fortunate enough to find a JSON file with recent cost of living statistics from 2019, I would like to use an API for that tab in order to keep the information relevant.

