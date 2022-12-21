//
//  ButtonLabelCell.swift
//  Cocoa Pr L95 Multicolumn NSTableView
//
//  Created by Michele Galvagno on 21/12/22.
//

import Cocoa

class ButtonLabelCell: NSTableCellView {

    @IBOutlet private weak var button: NSButton!
    @IBOutlet private weak var label: NSTextField!
    
    func configure(_ string: String) {
        button.title = string
        label.stringValue = string
    }
    
}
