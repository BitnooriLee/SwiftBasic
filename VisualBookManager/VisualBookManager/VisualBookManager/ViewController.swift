//
//  ViewController.swift
//  VisualBookManager
//
//  Created by Bitnoori Lee on 2018-08-25.
//  Copyright © 2018 Bitnoori Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBookManager = BookManager()
    
    @IBOutlet weak var outputTextView: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var authorTextField: UITextField!
    @IBOutlet weak var genreTextField: UITextField!
    
    @IBOutlet weak var countLabel: UILabel!
 

    override func viewDidLoad() {
        super.viewDidLoad()
        let book1 = Book(name: "Hemlet", genre: "tragedy", author: "Shakespear")
        let book2 = Book(name: "For whom the bell tolls", genre: "War  novel", author: "Hemingway")
        let book3 = Book(name: "The unbearable lightness of being", genre: "philosophical fiction", author: "Milan Kundera")
        
        
        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
       
    }
    @IBAction func registerAction(_ sender:Any){
        var bookTemp = Book()
        
        bookTemp.name = nameTextField.text!
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!
        
        myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "\(nameTextField.text!)has been registered."
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func searchAction(_ sender:Any){
        let resultBook = myBookManager.searchBook(name: nameTextField.text!)
        if resultBook != nil {
            outputTextView.text = resultBook
        }else{
            outputTextView.text = "We don't have that book at this moment."
        }
    }
    
    
    @IBAction func removeAction(_sender:Any){
        myBookManager.removeBook(name: nameTextField.text!)
        outputTextView.text = "\(nameTextField.text!) has been removed."
        countLabel.text = "\(myBookManager.countBooks())"
        
    }
    
    @IBAction func showAllBookAction(_ sender: Any) {
//        print("showAllBookAction")
        outputTextView.text = myBookManager.showAllBooks()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

