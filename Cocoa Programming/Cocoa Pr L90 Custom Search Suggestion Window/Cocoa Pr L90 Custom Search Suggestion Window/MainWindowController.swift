//
//  MainWindowController.swift
//  Cocoa Pr L90 Custom Search Suggestion Window
//
//  Created by Michele Galvagno on 07/11/22.
//

import Cocoa

class MainWindowController: NSWindowController {
    @IBOutlet weak var resultsLabel: NSTextField!
    @IBOutlet weak var searchField: NSSearchField!
    
    private let suggestions = ["Al", "Bethany", "Billy", "Bob", "Bobby", "Lucas"]
    
    convenience init() {
        self.init(windowNibName: String(describing: Self.self))
    }
    
    private func suggestions(for searchString: String) -> [String] {
        if searchString.isEmpty { return [] }
        let results = suggestions.filter { string in
            guard let range = string.range(of: searchString, options: [.anchored, .caseInsensitive]) else { return false }
            return !range.isEmpty
        }
        return results
    }
        
}
