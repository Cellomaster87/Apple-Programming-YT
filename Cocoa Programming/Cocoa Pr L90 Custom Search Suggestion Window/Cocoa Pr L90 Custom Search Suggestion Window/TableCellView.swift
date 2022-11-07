//
//  TableCellView.swift
//  Cocoa Pr L90 Custom Search Suggestion Window
//
//  Created by Michele Galvagno on 07/11/22.
//

import Cocoa

class TableCellView: NSTableCellView {
    static let nib = NSNib(nibNamed: String(describing: TableCellView.self), bundle: nil)
    static let identifier = NSUserInterfaceItemIdentifier(String(describing: TableCellView.self))
    
}
