//
//  TabViewController.swift
//  Cocoa Pr L81 NSTabViewController
//
//  Created by Michele Galvagno on 03/10/22.
//

import Cocoa

class TabViewController: NSTabViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    let blankView = NSView()
    
    override func transition(from fromViewController: NSViewController, to toViewController: NSViewController, options: NSViewController.TransitionOptions = [], completionHandler completion: (() -> Void)? = nil) {
        guard let window = self.view.window, let superview = fromViewController.view.superview else { return }
        
        let fromView = fromViewController.view
        let toView = toViewController.view
        
        let difference = toView.frame.differenceInSize(from: fromView.frame)
        
        fromView.removeFromSuperview()
        NSAnimationContext.runAnimationGroup { context in
            context.duration = 1
            context.allowsImplicitAnimation = true
            
            var windowFrame = window.frame
            windowFrame.origin.y = windowFrame.minY - difference.height
            windowFrame.size = NSSize(width: windowFrame.width + difference.width, height: windowFrame.height + difference.height)
            window.setFrame(windowFrame, display: true)
        } completionHandler: {
            superview.addSubview(toView)
            completion?()
        }

    }
    
}

extension NSRect {
    // Final - initial
    func differenceInSize(from: NSRect) -> NSSize {
        NSSize(width: self.width - from.width, height: self.height - from.height)
    }
}
