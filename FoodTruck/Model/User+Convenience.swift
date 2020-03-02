//
//  User+Convenience.swift
//  FoodTruck
//
//  Created by Nick Nguyen on 3/1/20.
//  Copyright © 2020 Kerby Jean. All rights reserved.
//

import Foundation
import CoreData



extension User {
    var userRepresentation: UserRepresentation? {
        guard let username = username, let password = password else { return nil }
        
        return UserRepresentation(username: username, password: password)
    }
    
    
   @discardableResult convenience init(username: String, password: String,context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context:context)
        self.username = username
        self.password = password
    }
    
    
    @discardableResult convenience init?(userRepresentation: UserRepresentation,context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        guard let username = userRepresentation.username , let password = userRepresentation.password else { return nil }
        
        self.init(username:username,
                  password:password,
                  context:context)
    }
    
}
