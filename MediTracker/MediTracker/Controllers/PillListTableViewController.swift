//
//  PillListTableViewController.swift
//  MediTracker
//
//  Created by Brian Rouse on 4/30/20.
//  Copyright © 2020 Brian Rouse. All rights reserved.
//

import UIKit

class PillListTableViewController: UITableViewController {
    
    // MARK: - ViewLifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.reloadData()
    }
    
    // MARK: - NavBarAction
    
    @IBAction func registerForNotifications(_ sender: UIBarButtonItem) {
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            if granted {
                print("Authorized")
            } else {
                print("Unauthorized")
            }
        }
    }
    
    @IBAction func scheduleNotifications(_ sender: UIBarButtonItem) {
        let center = UNUserNotificationCenter.current()
        
        let content = UNMutableNotificationContent()
        content.title = "Time to take your pills"
        
        content.body = "You need to take \(pillModelController.prescriptionPills.count) Prescription and \(pillModelController.supplementPills.count) Vitamin pills"
        content.categoryIdentifier = "morningPills"
        
        //The contents of the dictionary are not seen by the user, but are accessible to your app or to any notification-related app extensions.
        content.userInfo = ["customData": "someString"]
        content.sound = UNNotificationSound.default
        
        
        var dateComponents = DateComponents()
        dateComponents.hour = 09
        dateComponents.minute = 00
        
        // Actual calendar trigger
        // let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        // Extra trigger for testing purposes
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        center.add(request)
    }
    
    // MARK: - Table view data source
    
    let pillModelController = PillModelController()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            
            return pillModelController.prescriptionPills.count == 0 ? "" : "Prescriptions"
            
        } else if section == 1 {
            
            return pillModelController.supplementPills.count == 0 ? "" : "Supplements"
        }
        
        return nil
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let addEditViewController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "AddEditViewController") as? AddEditViewController {
            
            addEditViewController.pillModelController = pillModelController
            addEditViewController.pill = pillsFor(section: indexPath.section)[indexPath.row]
            
            self.navigationController?.pushViewController(addEditViewController, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pillsFor(section: section).count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PillCell", for: indexPath) as? PillsTableViewCell else { fatalError("Did not find cell") }
        
        cell.pill = pillsFor(section: indexPath.section)[indexPath.row]
        
        return cell
    }
    
    // Override to support editing the table view.
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            pillModelController.delete(pill: pillsFor(section: indexPath.section)[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}

extension PillListTableViewController {
    
    func pillsFor(section: Int) -> [Pill] {
        if section == 0 {
            return pillModelController.prescriptionPills
        } else if section == 1 {
            return pillModelController.supplementPills
        }
        return []
    }
}

// MARK: - UITabBarControllerDelegate

extension PillListTableViewController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if let viewController = (viewController as! UINavigationController).viewControllers[0] as? AddEditViewController {
            viewController.pillModelController = pillModelController
        }
    }
}
