//
//  ColorView.swift
//  Cocoa Pr L66 NSLayoutAnchor
//
//  Created by Michele Galvagno on 17/06/22.
//

import Cocoa

class ColorView: NSView {

    /* This is method is not allowed in Swift
    override class func initialize() {
        let t = UnsafeMutablePointer<time_t>.allocate(capacity: time_t(0))
        srand48(time(t))
    }
     */
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        self.wantsLayer = true
        self.layer = CALayer()
        
        layer?.backgroundColor = NSColor.randomColor().cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension NSColor {
    class func randomColor() -> NSColor {
        let r = CGFloat(drand48())
        let g = CGFloat(drand48())
        let b = CGFloat(drand48())
        
        return NSColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}
