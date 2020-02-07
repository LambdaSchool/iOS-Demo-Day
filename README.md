iOS Demo Day
Requirements

    Fork and clone the repository
    Create a branch for Unit1 or Unit4
    Add your Team Name / Team Members and make a commit
    Create a pull request (PR) and tag your TL and Instructor
    Add your presentation content
        Slide deck (4 required slides)
        Links
        Answer all questions
        YouTube demo video (1-2 min max)
    Polish your Github Code repository
        Add screenshots and an overview to your GitHub Code Repository
        You should make that repository the "Public Portfolio" for your project
        Look at John Sundell's Splash project for inspiration (code, images, GIFs)

Links

    App Name: <insert team name / app name>
    Team: <insert team members here>
    Github Code: <insert Github repository link here>
    Github Proposal: <insert Proposal Pull Request here>
    Trello/Github Project Kanban: <insert trello board here>
    Test Flight Signup (Recommended): <insert beta signup link here>
    YouTube demo video (Recommended): <insert video url here>

Hero Image

<Post one screenshot in an iPhone Simulator frame or an iPhone 11 Pro render using placeit.com>
Questions (Answer indented below)

    What was your favorite feature to implement? Why?

    The CollectionViewController used to display the different child profiles. Because it glides smoothly between one profile to the other. Plus the correct info for each child is populated from each collectionViewCell. 

    What was your #1 obstacle or bug that you fixed? How did you fix it?

   Syncronicing CoreData and Firebase was an issue. We found a different was to connect the relationships between one CD Object and another.Than correctly implementing putting those objects in Firebase 

    Share a chunk of code (or file) you're proud of and explain why.
	
	Here we were able to use the fetchResultController to fetch nested objects:
	* Using the predicate correctly made the magic happen 

	var fetchResultsController: NSFetchedResultsController<Item> {
        
	        let fetchRequest: NSFetchRequest<Item> = Item.fetchRequest()
				
	        let predicate = NSPredicate(format: "%K == %@", "child.name", getChildName())
	        fetchRequest.predicate = predicate
        
	        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "name", ascending: true)]
        
	        let moc = CoreDataStack.shared.mainContext
	        let fetchResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: moc, sectionNameKeyPath: nil, cacheName: nil)
	        fetchResultsController.delegate = self
	        do {
	            try fetchResultsController.performFetch()
	        } catch {
	            fatalError("Failed to fetch entities: \(error)")
	        }
	        return fetchResultsController
	    }
    
	    private func getChildName() -> String {
	        guard let child = child,
	            let name = child.name else { return ""}
	        return name
	    }

    What is your elevator pitch? (30 second description your Grandma or a 5-year old would understand)

    Santa I Wish is a convenient App where Children can save a Wish List for Christmas and even write Letters to Santa! Items can be added to the Wish List with a Picture so Santa has no trouble knowing exactly what they want.

    What is your #1 feature?

    Multiple child profiles can be added to one Parent Account. Making it easy for each Child keep track of their own Wish List. Plus keeping the Wish Lists organized for Santa.

    What are you future goals?

	Santa Tracker API
	Christmas Day Counter
	Passcode secured Parent profile
	Budgeting tool for Parents

Required Slides (Add your Keynote to your PR)

    App Name / Team Slide
    Elevator Pitch
    Demo
    Future Goals

Slide Requirements

    50 pt font minimum
    Be concise — don't write sentences/paragraphs (put these in your slide notes for speaking)
    3-6 bullets maximum per slide
    Do the squint test (can you read the text if you squint, if so, make the font bigger)
    Images are always welcome
    Do the Grandma Test (Would your Grandma understand you?)

Optional Slides

    Blooper: What's a funny bug or blooper? (screenshots/GIFs please)
    Revenue Model: If the app was your sole source of income, how would you monetize it?

Presentation Format

7 minutes/team

    4 minute presentation (5 minute hard cap)
    3 minutes of questions

We have ~12 teams presenting today — please practice your presentation with a timer (as a team), and make sure you fit within the time limit.

Plan on having one person present the slides and live demo. Please practice your presentation in front of a mirror or with your team 2-5 times. Have the app running and visible (Simulator or QuickTime) so you can quickly transition between slides and live demo.

    App Name / Team Slide (30 seconds)
    Elevator Pitch Slide (60 seconds)
    Live Demo (2 minutes)
    Future Goals (30 seconds)
    Questions (3 minutes)
