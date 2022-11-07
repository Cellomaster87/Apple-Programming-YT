//
//  SuggestionsWindowController.swift
//  Cocoa Pr L90 Custom Search Suggestion Window
//
//  Created by Michele Galvagno on 07/11/22.
//

import Cocoa

class SuggestionsWindowController: NSWindowController {
    private var suggestions = [String]()
    
    private lazy var tableView: NSTableView = {
       let t = NSTableView()
        t.addTableColumn(NSTableColumn(identifier: NSUserInterfaceItemIdentifier("Main")))
        t.usesAutomaticRowHeights = true
        t.register(TableCellView.nib, forIdentifier: TableCellView.identifier)
        t.dataSource = self
        t.delegate = self
        return t
    }()
    
    convenience init() {
        self.init(windowNibName: String(describing: Self.self))
    }

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
}

extension SuggestionsWindowController: NSTableViewDataSource {
    
}

extension SuggestionsWindowController: NSTableViewDelegate {
    
}
