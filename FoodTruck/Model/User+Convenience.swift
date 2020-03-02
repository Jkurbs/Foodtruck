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
    var jsonUser: JSONUser? {
        guard let username = username, let password = password else { return nil }
        
        return JSONUser(username: username, password: password)
    }
    
    
   @discardableResult convenience init(username: String, password: String,context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context:context)
        self.username = username
        self.password = password
    }
    
    
    @discardableResult convenience init?(jsonUser: JSONUser,context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        guard let username = jsonUser.username , let password = jsonUser.password else { return nil }
        
        self.init(username:username,
                  password:password,
                  context:context)
    }
    
}
