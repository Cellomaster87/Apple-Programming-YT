//
//  ImageDropView.swift
//  Cocoa Pr L86 NSFilePromiseReceiver
//
//  Created by Michele Galvagno on 22/10/22.
//

import Cocoa

@objc protocol ImageDropViewDelegate: AnyObject {
    func dragginEntered(forImageDropView imageDropView: ImageDropView, sender: NSDraggingInfo) -> NSDragOperation
    func performDragOperation(forImageDropView imageDropView: ImageDropView, sender: NSDraggingInfo) -> Bool
}

class ImageDropView: NSView {
    @IBOutlet private weak var imageView: NSImageView!
    @IBOutlet weak var delegate: ImageDropViewDelegate?
    
    var image: NSImage? {
        get {
            return imageView?.image
        }
        set {
            imageView.image = newValue
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Register for drag types
        imageView.unregisterDraggedTypes()
        
        registerForDraggedTypes(NSFilePromiseReceiver.readableDraggedTypes.map { NSPasteboard.PasteboardType($0) })
        registerForDraggedTypes([.fileURL])
    }
    
    // MARK: - NSDraggingDestination
    override func draggingEntered(_ sender: NSDraggingInfo) -> NSDragOperation {
        return delegate?.dragginEntered(forImageDropView: self, sender: sender) ?? []
    }
    
    override func performDragOperation(_ sender: NSDraggingInfo) -> Bool {
        return delegate?.performDragOperation(forImageDropView: self, sender: sender) ?? true
    }
}
