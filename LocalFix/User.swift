// User.swift
import CoreData

@objc(User)
public class User: NSManagedObject {
}

extension User {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var joined: Date?
}
