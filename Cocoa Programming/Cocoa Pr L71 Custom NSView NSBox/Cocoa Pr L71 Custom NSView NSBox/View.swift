//
//  View.swift
//  Cocoa Pr L71 Custom NSView NSBox
//
//  Created by Michele Galvagno on 12/09/22.
//

import Cocoa

@IBDesignable
class View: NSView {
    @IBInspectable var backgroundColor: NSColor? {
        didSet { needsDisplay = true }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet { needsDisplay = true }
    }
    
    @IBInspectable var borderColor: NSColor? {
        didSet { needsDisplay = true }
    }
    
    @IBInspectable dynamic var borderWidth: CGFloat = 0 {
        didSet { needsDisplay = true }
    }
    
    override func animation(forKey key: NSAnimatablePropertyKey) -> Any? {
        switch key {
        case "borderWidth":
            return CABasicAnimation()
        default:
            return super.animation(forKey: key)
        }
    }
    
    override var wantsUpdateLayer: Bool {
        return true
    }
    
    /// Do not update the layer outside of this method
    override func updateLayer() {
        guard let layer = layer else { return }
        
        layer.backgroundColor = backgroundColor?.cgColor
        layer.cornerRadius = cornerRadius
        layer.borderColor = borderColor?.cgColor
        layer.borderWidth = borderWidth
    }
    
}
