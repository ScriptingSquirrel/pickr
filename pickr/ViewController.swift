//
//  ViewController.swift
//  pickr
//
//  Created by Elmar Ritsch on 21.12.16.
//
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var urlLabel: NSTextField!

    let appDelegate = NSApplication.shared().delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        urlLabel.stringValue = appDelegate.url
        appDelegate.urlLabel = urlLabel
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func launchTor(button: NSButton) {
        appDelegate.openBrowserAndTerminateApp("TorBrowser")

    }

    @IBAction func launchFirefox(button: NSButton) {
        appDelegate.openBrowserAndTerminateApp("Firefox")
    }

    @IBAction func launchChrome(button: NSButton) {
        appDelegate.openBrowserAndTerminateApp("Google Chrome")
    }

    @IBAction func launchSafari(button: NSButton) {
        appDelegate.openBrowserAndTerminateApp("Safari")
    }

    @IBAction func launchDefault(button: NSButton) {
        appDelegate.openDefaultBrowserAndTerminateApp()
    }
}

