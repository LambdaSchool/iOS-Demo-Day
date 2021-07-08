//
//  ViewController2.swift
//  BuildWeekRestart
//
//  Created by Lambda_School_Loaner_167 on 9/25/19.
//  Copyright © 2019 Dani. All rights reserved.
//

import UIKit


class AddNewEvent: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var categoryTextField: UITextField!
    
    var selectedDate: Date?
    let datePicker: UIDatePicker = UIDatePicker()
    let categoryPicker: UIPickerView = UIPickerView()
    let inputChoices: [Category] = [.Holiday, .Birthday, .Anniversary, .Home, .Work, .Other]
    
    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE, MMM d"
        return formatter
    }()
    
    var delegate: ViewController2Delegate?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTextField.inputView = categoryPicker
        categoryPicker.delegate = self
        categoryPicker.dataSource = self
        dateTextField.inputView = datePicker
        datePicker.addTarget(self, action: #selector(dateChanged), for: UIControl.Event.valueChanged)
        datePicker.datePickerMode = .date
    }
        
        
        
      
    
    @IBOutlet weak var saveButton: UIButton!
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//            }
    
    @objc func dateChanged() {
        dateTextField.text =  dateFormatter.string(from: datePicker.date)
        
        print("Date changed")
    }
    
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        guard let titleText = titleTextField.text,
            let categoryText = categoryTextField.text,
            let category = Category(rawValue: categoryText)
        else {
            return
        }
        let newEvent = Event(title: titleText, date: datePicker.date, category: category)
        delegate?.eventAdded(event: newEvent)
        
        
    }
}

   

extension AddNewEvent: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return inputChoices.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return inputChoices[row].rawValue
    }
}

extension AddNewEvent: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        categoryTextField.text = inputChoices[row].rawValue
    }
}

extension Date {

func interval(ofComponent comp: Calendar.Component, fromDate date: Date) -> Int {

    let currentCalendar = Calendar.current

    guard let start = currentCalendar.ordinality(of: comp, in: .era, for: date) else { return 0 }
    guard let end = currentCalendar.ordinality(of: comp, in: .era, for: self) else { return 0 }

    return end - start
}
}

