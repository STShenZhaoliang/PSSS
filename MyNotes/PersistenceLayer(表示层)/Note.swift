//
//  Note.swift
//  MyNotes
//
//  Created by 沈兆良 on 16/4/5.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import Foundation

class Note {
    var date : NSDate
    var content : String

    init() {
        self.date = NSDate()
        self.content = ""
    }

    init(date: NSDate, content: String) {
        self.date = date
        self.content = content
    }
}