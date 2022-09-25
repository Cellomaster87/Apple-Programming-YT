//
//  ServiceProvider.swift
//  Cocoa Pr L77 Services
//
//  Created by Michele Galvagno on 25/09/22.
//

import Cocoa

class ServiceProvider {
    @objc func countWords(_ pasteboard: NSPasteboard, userData: NSString, error: UnsafeMutablePointer<NSString>) {
        guard let documentURL = pasteboard.readObjects(forClasses: [NSURL.self])?.first as? URL else { return }
        
        let text = (try? String(contentsOf: documentURL)) ?? ""
        update(NSPasteboard.general, with: text)
    }
    
    @objc func countWordsString(_ pasteboard: NSPasteboard, userData: NSString, error: UnsafeMutablePointer<NSString>) {
        guard let text = pasteboard.readObjects(forClasses: [NSURL.self])?.first as? String else { return }
        
        update(pasteboard, with: text)
    }
    
    private func update(_ pasteboard: NSPasteboard, with text: String) {
        let wordCount = NSSpellChecker.shared.countWords(in: text, language: nil)
        pasteboard.clearContents()
        pasteboard.setString("\(wordCount)", forType: .string)
        
        AppDelegate.shared.setWordCount(wordCount)
    }

}
