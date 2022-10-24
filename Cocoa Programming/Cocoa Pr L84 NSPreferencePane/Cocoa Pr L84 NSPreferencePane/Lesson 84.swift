//
//  Lesson 84.swift
//  Cocoa Pr L84 NSPreferencePane
//
//  Created by Michele Galvagno on 06/10/22.
//

import Cocoa
import PreferencePanes

class Lesson_84: NSPreferencePane {
    override func mainViewDidLoad() {
        super.mainViewDidLoad()
    }

    @IBAction func changeTextFile(_ sender: Any) {
        FileManager.default.createFile(atPath: NSString("~/Desktop/PreferencePaneFolder/Awesome.txt").expandingTildeInPath, contents: "My Awesome File".data(using: .utf8), attributes: nil)
    }
    
    override var shouldUnselect: NSPreferencePaneUnselectReply {
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.reply(toShouldUnselect: true)
        }
        return .unselectLater
    }
}
