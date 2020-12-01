//
//  Reminder+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Abdoulaye Diallo on 12/1/20.
//


import CoreData

extension Reminder {
    
    @NSManaged var title: String
    @NSManaged var isCompleted: Bool
    @NSManaged var notes: String?
    @NSManaged var dueDate: Date?
    @NSManaged var priority: Int16
    
    
}



