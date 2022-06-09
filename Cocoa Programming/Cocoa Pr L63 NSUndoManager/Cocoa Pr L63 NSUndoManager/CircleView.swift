//
//  CircleView.swift
//  Cocoa Pr L63 NSUndoManager
//
//  Created by Michele Galvagno on 09/06/22.
//

import Cocoa

class CircleView: NSView {

    override var wantsUpdateLayer: Bool {
        return true
    }
    
    override func updateLayer() {
        layer?.backgroundColor = NSColor.white.cgColor
        layer?.cornerRadius = frame.size.width/2.0
    }
    
}
