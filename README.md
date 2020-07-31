# iOS Demo Day


## Links

* App Name: Monologue
* Team: Nonye Ezekwo 
* Github Code: https://github.com/nonyeezekwo/monologue
* Github Proposal: https://github.com/nonyeezekwo/ios-build-sprint-project-proposal
* Trello/Github Project Kanban: https://trello.com/b/WlqwGRoN/monologue#
* Test Flight Signup (Recommended): `<insert beta signup link here>`
* YouTube demo video (Recommended): `<insert video url here>`

## Hero Image

//Implemented in my KeyNote

## Questions (Answer indented below)

1. What was your favorite feature to implement? Why?

My favorite feature to implement is the collection view cell over the ViewController. Collection Views have been tough for me to grasp since unit one so I really wanted to make that part of this Units build week and did so successfully.

2. What was your #1 obstacle or bug that you fixed? How did you fix it?

I faced an obstacle but not having options and being required to have inits that throw fatal errors. I couldn't seem to get past that without breaking something else but after much refactoring I was able to get past that which then allowed me to continue to work on other bugs about information being passed and saved correctly.
  
3. Share a chunk of code (or file) you're proud of and explain why.
I typically have a hard time reading documentation but luckily I was able to make sense of it and create this function.

private func recordAndTranscribe() {
recognitionRequest = SFSpeechAudioBufferRecognitionRequest()

let monologueURL = createNewRecordingURL()
let node = audioEngine.inputNode
let recordingFormat = node.outputFormat(forBus: 0)
node.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { buffer, _ in
self.recognitionRequest?.append(buffer)
}
audioEngine.prepare()
do {
try audioEngine.start()
} catch {
NSLog("Error grabbing voice input: \(error)")
}
guard let request = recognitionRequest,
let speechRecognizer = speechRecognizer,
speechRecognizer.isAvailable else { return }

recognitionTask = speechRecognizer.recognitionTask(with: request, resultHandler: { result, error in
if let result = result {
let monoText = result.bestTranscription.formattedString
self.textView.text = monoText
self.monologueURL = monologueURL
} else if let error = error {
NSLog("Error recognizing speech: \(error)")
}
})
}
  
4. What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

The Create Daily app is the perfect application for an easy going note taker. It allows you to jot down notes and recieve a notification ensuring that the application has recorded what you have written down. Also, Create Daily allows you to go back into the the note and view it in its entirity from a separate screen from tapping directly on the section of notes.
  
5. What is your #1 feature?

The voice to text implementation.
  
6. What are you future goals?

* Allow for users to customize category names, layout + background images
* Add a scheduling feature for notifications of upcoming events, tasks, etc.
* Save locations attached to the note
* Log in/Sign up screen for extra security


