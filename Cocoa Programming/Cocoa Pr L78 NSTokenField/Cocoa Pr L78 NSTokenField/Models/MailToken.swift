//
//  MailToken.swift
//  Cocoa Pr L78 NSTokenField
//
//  Created by Michele Galvagno on 26/09/22.
//

import Foundation

struct MailToken {
    let name: String
    let email: String
    
    var editingString: String {
        return "\(name) <\(email)>"
    }
    
    var nameEmail: String {
        "\(name) - \(email)"
    }
    
    var emailName: String {
        "\(email) - \(name)"
    }
}
