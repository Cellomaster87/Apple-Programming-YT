//
//  AppDelegate.swift
//  Cocoa Pr L80 Field Editor
//
//  Created by Michele Galvagno on 01/10/22.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    
}

extension AppDelegate: NSTextFieldDelegate {
    func control(_ control: NSControl, textView: NSTextView, doCommandBy commandSelector: Selector) -> Bool {
        if commandSelector == #selector(NSResponder.insertNewline(_:)) {
            textView.insertNewlineIgnoringFieldEditor(nil)
            
            return true
        }
        return false
    }
}

/**
 1. MainMenu.xib
    a. from the Delegate text field, wire up the delegate to the AppDelegate object
    b. from the library, drag a number formatter over the "Number Formatter" text field, and that's it
    c. drag a Text Field Cell into the Custom text field, create a Cocoa Class "CustomTextField: NSTextFieldCell" and assign it to the cell in IB
 2. AppDelegate.swift
    a. create an extension to the AppDelegate, implementing the control(_:textView:doCommandBy:) method
 3. in CustomTextField.swift
    a. create the CustomTextStorage: NSTextStorage class
    b. create the CustomFieldEditor: NSTextView class
    c. create the CustomTextField: NSTextFieldCell class
 */

