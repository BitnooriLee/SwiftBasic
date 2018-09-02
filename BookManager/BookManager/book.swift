//
//  book.swift
//  BookManager
//
//  Created by Bitnoori Lee on 2018-08-25.
//  Copyright © 2018 Bitnoori Lee. All rights reserved.
//

struct Book {
    var name:String?
    var genre:String?
    var author:String?
    
    func bookPrint(){
        print("Name: \(name!)")
        print("Genge: \(genre!)")
        print("Author: \(author!)")
        print("------------------")
    }
}
