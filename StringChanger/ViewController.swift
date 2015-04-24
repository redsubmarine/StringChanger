//
//  ViewController.swift
//  StringChanger
//
//  Created by 양원석 on 2015. 4. 24..
//  Copyright (c) 2015년 양원석. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet
    var inputTextView: NSTextView!
    
    @IBOutlet
    var outputTextView: NSTextView!
    
    @IBAction
    func change(sender: AnyObject) {
        let string = self.inputTextView.string
        self.outputTextView.string = String(CString: string!.cStringUsingEncoding(NSASCIIStringEncoding)!, encoding: NSNonLossyASCIIStringEncoding)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}

