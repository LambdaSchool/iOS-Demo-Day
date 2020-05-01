//
//  PillModelController.swift
//  MediTracker
//
//  Created by Brian Rouse on 4/30/20.
//  Copyright © 2020 Brian Rouse. All rights reserved.
//

let demoPill: Pill = Pill(name: "Prescription", isPrescription: true, numberOfPills: 1, dosage: 100, dosageType: "mg", frequency: .daily)
let demoVitamin: Pill = Pill(name: "Vitamin", isPrescription: false, numberOfPills: 2, dosage: 100, dosageType: "mg", frequency: .daily)

import Foundation

class PillModelController {
    
    // MARK: - Initialization
    
    init () {
        loadFromPersistentStore()
    }
    
    // MARK: - Properties
    
    private var pills: [Pill] = [demoPill, demoVitamin]
    
    var prescriptionPills: [Pill] {
        let filter = pills
            .filter { $0.isPrescription }
            .sorted { $0.name < $1.name }
        return filter
    }
    
    var supplementPills: [Pill] {
        let filter = pills
            .filter { !$0.isPrescription }
            .sorted { $0.name < $1.name }
        return filter
    }
    
    private var pillListURL: URL? {
        let fileManager = FileManager.default
        guard let documents = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first
            else { return nil }
        return documents.appendingPathComponent("Info.plist")
    }
    
    func saveToPersistentStore() {
        
        guard let url = pillListURL else { return }
        let encoder = PropertyListEncoder()
        do {
            let pillsData = try encoder.encode(pills)
            try pillsData.write(to: url)
        } catch {
            print("Error saving pill list: \(error)")
        }
    }
    
    func loadFromPersistentStore() {
        guard let url = pillListURL else { return }
        let decoder = PropertyListDecoder()
        
        do {
            let pillsData = try Data(contentsOf: url)
            let decodedPills = try decoder.decode([Pill].self, from: pillsData)
            pills = decodedPills
        } catch {
            print("Error loading pill list: \(error)")
        }
    }
    
    func create(pill: Pill) {
        pills.append(pill)
        saveToPersistentStore()
    }
    
    func delete(pill: Pill) {
        if pills.contains(pill) {
            guard let pillIndex = pills.firstIndex(of: pill) else { return }
            pills.remove(at: pillIndex)
            saveToPersistentStore()
        }
    }
    
    func updatePill(for pill: Pill, newName: String?, newQuantity: UInt?, newDosage: UInt?, newDosageType: String?, isPrescription: Bool, newFrequency: Frequency) {
        guard let pillIndex = pills.firstIndex(of: pill) else { return }
        var updatedPill = pill
        
        if let newPillName = newName {
            updatedPill.name = newPillName
        }
        if let newPillQuantity = newQuantity {
            updatedPill.numberOfPills = newPillQuantity
        }
        if let newPillDosage = newDosage {
            updatedPill.dosage = newPillDosage
        }
        if let newPillDosageType = newDosageType {
            updatedPill.dosageType = newPillDosageType
        }
        updatedPill.isPrescription = isPrescription
        updatedPill.frequency = newFrequency
        
        pills[pillIndex] = updatedPill
        saveToPersistentStore()
    }
}
