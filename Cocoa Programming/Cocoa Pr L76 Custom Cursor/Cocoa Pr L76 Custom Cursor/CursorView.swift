//
//  CursorView.swift
//  Cocoa Pr L76 Custom Cursor
//
//  Created by Michele Galvagno on 23/09/22.
//

import Cocoa

class CursorView: NSView {
    
    var points = [NSPoint]()

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        NSColor.lightGray.setFill()
        bounds.fill()
        NSColor.red.setFill()
        
        for point in points {
            let circle = NSBezierPath(ovalIn: NSRect(x: point.x - 3, y: point.y - 3, width: 6, height: 6))
            circle.fill()
        }
    }
    
    override func mouseDown(with event: NSEvent) {
        super.mouseDown(with: event)
        
        points.append(convert(event.locationInWindow, from: nil))
        needsDisplay = true
    }
    
    override func resetCursorRects() {
        guard let treeImage = NSImage(named: "Tree") else { return }
            
        let cursor = NSCursor(image: treeImage, hotSpot: NSPoint(x: 6, y: 0)) // x-value is the half of the width of the cursor
        addCursorRect(bounds, cursor: cursor)
    }
    
}
