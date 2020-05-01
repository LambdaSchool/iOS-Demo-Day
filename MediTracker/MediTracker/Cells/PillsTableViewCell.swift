//
//  PillsTableViewCell.swift
//  MediTracker
//
//  Created by Brian Rouse on 4/30/20.
//  Copyright © 2020 Brian Rouse. All rights reserved.
//

import UIKit

class PillsTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var dosageLabel: UILabel!
    @IBOutlet weak var dosageTypeLabel: UILabel!
    @IBOutlet weak var frequencyLabel: UILabel!
    @IBOutlet weak var nextPillAtLabel: UILabel!
    
    // MARK: - iVars
    
    var pill: Pill? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - Helper Methods
    
    func updateViews() {
        guard let pill = pill else { return }
        
        let quantityString = String(pill.numberOfPills)
        
        if pill.dosage != nil {
            let dosageString = String(pill.dosage!)
            dosageLabel.text = dosageString
        }
        
        nameLabel.text = pill.name
        quantityLabel.text = quantityString
        
        dosageTypeLabel.text = pill.dosageType
        frequencyLabel.text = pill.frequency.rawValue
    }
}
