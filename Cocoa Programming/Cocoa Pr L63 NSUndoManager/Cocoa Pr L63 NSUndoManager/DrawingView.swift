//
//  DrawingView.swift
//  Cocoa Pr L63 NSUndoManager
//
//  Created by Michele Galvagno on 09/06/22.
//

import Cocoa

class DrawingView: NSView {

    override func mouseDown(with event: NSEvent) {
        let point = convert(event.locationInWindow, from: nil)
        if event.modifierFlags.contains(.option) {
            // Remove circle
            if let view = hitTest(point), view is CircleView {
                removeCircle(view)
                undoManager?.setActionName("Remove Circle")
            }
        } else {
            // Add circle
            let circle = CircleView(frame: NSMakeRect(point.x-15, point.y-15, 30, 30))
            addCircle(circle)
            undoManager?.setActionName("Add Circle")
        }
    }
    
    @objc func addCircle(_ circle: NSView) {
        addSubview(circle)
        undoManager?.registerUndo(withTarget: self, selector: #selector(self.removeCircle(_:)), object: circle)
    }
    
    @objc func removeCircle(_ circle: NSView) {
        circle.removeFromSuperview()
//        undoManager?.prepare(withInvocationTarget: self).addCircle(circle)
        undoManager?.registerUndo(withTarget: self, selector: #selector(self.addCircle(_:)), object: circle)
    }
    
    override var wantsUpdateLayer: Bool {
        return true
    }
    
    override func updateLayer() {
        layer?.backgroundColor = NSColor.black.cgColor
    }
    
}
