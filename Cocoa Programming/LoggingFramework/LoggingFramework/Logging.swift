//
//  Logging.swift
//  LoggingFramework
//
//  Created by Michele Galvagno on 15/06/22.
//

import Foundation

public func NSLog(string: String) {
    let name = Bundle.main.infoDictionary!["CFBundleName"] as! String
    print("\(NSDate()) \(name) \(string)")
}

public class Logging {
    public init() {
        /**
         If you need to expose the class to other entities, it needs to be public
         */
    }
    
    public func testMethod() {
        print("Test Method")
    }
    
    public class func testClassMethod() {
        print("Test Class Method")
    }
}
