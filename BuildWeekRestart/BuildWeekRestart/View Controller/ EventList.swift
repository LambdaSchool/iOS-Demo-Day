//
//  ViewController.swift
//  BuildWeekRestart
//
//  Created by Lambda_School_Loaner_167 on 9/25/19.
//  Copyright © 2019 Dani. All rights reserved.
//

import UIKit

protocol ViewController2Delegate {
    func eventAdded(event: Event)
}

class ListOfEvents: UIViewController, UITableViewDataSource, UITableViewDelegate, ViewController2Delegate {
  
   


        @IBOutlet weak var tableView: UITableView!
        
        
        var events: [Event] = [] {
            didSet {
                guard events.count > 0 else { return }
                // sort
                self.events.sort(by: {$0.date < $1.date})
//                tableView.reloadData()
            }
        }
        
        var selectedEvent: Event?
       
        
        override func viewDidLoad() {
            super.viewDidLoad()
    
        }

//        override func didReceiveMemoryWarning() {
//            super.didReceiveMemoryWarning()
//           
//        }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "AddNewEvent" {
            if let viewControllerTwo = segue.destination as? AddNewEvent {
                viewControllerTwo.delegate = self
            }
           
                if  let _ = segue.destination as? UINavigationController,
                    let _ = selectedEvent {
            }
        }
    }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return events.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CountdownCellReuseIdentifier", for: indexPath)
         
            
            
            let event = events[indexPath.row]
            
            
            cell.textLabel?.text = event.title
            cell.detailTextLabel?.text = event.dateString()
                return cell
        }
        
        func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
            return true
        }
        
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if (editingStyle == UITableViewCell.EditingStyle.delete) {
                // handle delete (by removing the data from your array and updating the tableview)
                events.remove(at: indexPath.row)
               // tableView.deleteRows(at: [indexPath], with: .right)
            }
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            selectedEvent = events[indexPath.row]
            tableView.deselectRow(at: indexPath, animated: true)
        }
    
    func eventAdded(event: Event) {
        events.append(event)
        tableView.reloadData()
        dismiss(animated: true, completion: nil)
    }
    
   

}
