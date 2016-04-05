//
//  DetailViewController.swift
//  TestModel
//
//  Created by 沈兆良 on 16/4/5.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import UIKit

class AddViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var txtView: UITextView!
    //业务逻辑对象BL
    var bl = NoteBL()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.txtView.delegate = self
        self.txtView.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onclickSave(sender: AnyObject) {

        let note = Note()
        note.date = NSDate()
        note.content = self.txtView.text
        let reslist = bl.createNote(note)
        NSNotificationCenter.defaultCenter().postNotificationName("reloadViewNotification", object: reslist, userInfo: nil)
        self.txtView.resignFirstResponder()
        self.dismissViewControllerAnimated(true, completion: nil)

    }

    @IBAction func onclickCancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        if (text == "\n") {
            textView.resignFirstResponder()
            return false
        }
        return true
    }

}
