# iOS Demo Day


## Links

* App Name: Create Daily
* Team: Nonye Ezekwo (Solo)
* Github Code: https://github.com/nonyeezekwo/BuildWeekOne
* Github Proposal: https://github.com/LambdaSchool/ios-build-sprint-project-proposal/pull/79
* Trello/Github Project Kanban: https://trello.com/b/EoqT4glp/createdaily
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image

//Implemented in my KeyNote

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

My favorite feature to implement was the notification. The notification attached to the save button is my favorite because I struggled with alerts and notifications so it was great to see it turn out the way I envisioned it.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

The obstacle was passing the information from the individual cell to the Detail VC that I created. I was able to figure it out with help from the TL's and research online as well. 
  
3. Share a chunk of code (or file) you're proud of and explain why.
//This was super hard for me to learn when we went over it in class so I was happy to be able to better implement it in my project

@IBAction func saveNoteTapped(_ sender: Any) {
    guard let noteTitle = noteTitleTextField.text,
        let noteDescription = noteTextView.text else { return }
    delegate?.noteWasCreated(Notes(noteTitle: noteTitle, noteDescription: noteDescription))
    let alert = UIAlertController(title: "Note Created!", message: "Your new note has been saved", preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Finished", style: .default){
        (UIAlertAction) -> Void in
        self.navigationController?.popToRootViewController(animated: true)

  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

The Create Daily app is the perfect application for an easy going note taker. It allows you to jot down notes and recieve a notification ensuring that the application has recorded what you have written down. Also, Create Daily allows you to go back into the the note and view it in its entirity from a separate screen from tapping directly on the section of notes.
  
5. What is your #1 feature?

The notifications to ensure notes have been recorded is my number one feature.
  
6. What are you future goals?

Adding features for recording the time & date of entries
Allowing users to also add in a photo with their note entry if preferred 
Categorizing notes into separate tabs depending on what they are

