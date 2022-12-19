//
//  ViewController.swift
//  Cocoa Pr L91 NSTableView Big Sur Updates
//
//  Created by Michele Galvagno on 19/12/22.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var tableView: NSTableView!
    
    private static let identifier = NSUserInterfaceItemIdentifier("CellIdentifier")
    private static let mainSection = "MainSection"
    private lazy var dataSource = createDataSource()
    
    var numbers = [1, 2, 3, 4]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
        
        var snapshot = NSDiffableDataSourceSnapshot<String, Int>()
        snapshot.appendSections([Self.mainSection])
        snapshot.appendItems(numbers, toSection: Self.mainSection)
        
        dataSource.apply(snapshot, animatingDifferences: false)
    }
    
    func createDataSource() -> NSTableViewDiffableDataSource<String, Int> {
        let dataSource = NSTableViewDiffableDataSource<String, Int>(tableView: tableView) { (tableView, tableColumn, row, item) -> NSView in
            guard let cell = tableView.makeView(withIdentifier: Self.identifier, owner: self) as? NSTableCellView else { return NSView() }
            
            cell.textField?.stringValue = String(item)
            
            return cell
        }
        
        return dataSource
    }
    
    @IBAction func insertItem(_ sender: NSButton) {
        let lastNumber = numbers.last ?? 0
        let addedNumber = lastNumber + 1
        numbers.append(addedNumber)
        
        var snapshot = dataSource.snapshot()
        snapshot.appendItems([addedNumber], toSection: Self.mainSection)
        
        dataSource.apply(snapshot, animatingDifferences: true)
    }
    
    @IBAction func removeFirst(_ sender: NSButton) {
        if numbers.isEmpty { return }
        
        let item = numbers.removeFirst()
        
        var snapshot = dataSource.snapshot()
        snapshot.deleteItems([item])
        dataSource.apply(snapshot, animatingDifferences: true)
    }
    
    @IBAction func swapStyle(_ sender: NSButton) {
        let style = tableView.style
        
        switch style {
        case .automatic: tableView.style = .fullWidth
        case .fullWidth: tableView.style = .inset
        case .inset: tableView.style = .plain
        case .plain: tableView.style = .sourceList
        case .sourceList: tableView.style = .automatic
        @unknown default: fatalError()
        }
        
        print(tableView.style)
    }
}

extension NSTableView.Style: CustomStringConvertible {
    public var description: String {
        switch self {
        case .automatic: return "Automatic"
        case .fullWidth: return "Full Width"
        case .inset: return "Inset"
        case .plain: return "Plain"
        case .sourceList: return "Source List"
        @unknown default: fatalError()
        }
    }
}
