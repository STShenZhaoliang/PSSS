//
//  NoteBL.swift
//  MyNotes
//
//  Created by 沈兆良 on 16/4/5.
//  Copyright © 2016年 沈兆良. All rights reserved.
//

import Foundation

class NoteBL {
    //插入Note方法
    func createNote(model: Note) -> NSMutableArray {
        let dao: NoteDao = NoteDao.sharedInstance
        dao.create(model)
        return dao.findAll()
    }

    //删除Note方法
    func remove(model: Note) -> NSMutableArray {
        let dao: NoteDao = NoteDao.sharedInstance
        dao.remove(model)
        return dao.findAll()
    }

    //查询所用数据方法
    func findAll() -> NSMutableArray {
        let dao: NoteDao = NoteDao.sharedInstance
        return dao.findAll()
    }

}