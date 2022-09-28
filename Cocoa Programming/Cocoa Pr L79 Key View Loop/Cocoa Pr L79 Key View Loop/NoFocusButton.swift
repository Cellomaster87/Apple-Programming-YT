//
//  NoFocusButton.swift
//  Cocoa Pr L79 Key View Loop
//
//  Created by Michele Galvagno on 28/09/22.
//

import Cocoa

class NoFocusButton: NSButton {

    override var acceptsFirstResponder: Bool {
        return false
    }
    
}
