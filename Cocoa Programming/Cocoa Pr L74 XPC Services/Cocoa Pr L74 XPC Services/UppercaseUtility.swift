//
//  UppercaseUtility.swift
//  Cocoa Pr L74 XPC Services
//
//  Created by Michele Galvagno on 20/09/22.
//

import Foundation
import TextService

class UppercaseUtility {
    class func uppercase(_ string: String, reply: @escaping (String) -> Void) {
        let connection = NSXPCConnection(serviceName: "com.michelegalvagno.TextService")
        connection.remoteObjectInterface = NSXPCInterface(with: TextServiceProtocol.self)
        connection.resume()
        
        let service = connection.remoteObjectProxyWithErrorHandler { error in
            print("Error: \(error)")
        } as? TextServiceProtocol
        
        service?.uppercase(string: string, with: reply)
    }
}
