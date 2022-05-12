//
//  ViewController.swift
//  VisualBookManager
//
//  Created by 이동기 on 2022/05/12.
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
        // Do any additional setup after loading the view.
        
        let book1 = Book(name: "햄릿", genre: "비극", author: "셰익스피어")
        let book2 = Book(name: "누구를 위하여 종울 울리나", genre: "전쟁소설", author: "헤밍웨이")
        let book3 = Book(name: "죄와벌", genre: "사실주의", author: "톨스토이")

        myBookManager.registerBook(bookObject: book1)
        myBookManager.registerBook(bookObject: book2)
        myBookManager.registerBook(bookObject: book3)
        countLabel.text = "\(myBookManager.countBooks())"
        
    }
    
    @IBAction func registerAction(_ sender: Any) {
        // var bookTemp = Book() 이렇게하면 초기화가 안되기 때문에 구조체 Book을 옵셔널 타입으로 해줘야함
        var bookTemp = Book()
        
        bookTemp.name = nameTextField.text!
        bookTemp.author = authorTextField.text!
        bookTemp.genre = genreTextField.text!
        
        myBookManager.registerBook(bookObject: bookTemp)
        outputTextView.text = "\(nameTextField.text!)이 등록되었습니다."
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func searchAction(_ sender: Any) {
        let resultBook = myBookManager.searchBook(name: nameTextField.text!)
        if resultBook != nil {
            outputTextView.text = resultBook
        } else {
            outputTextView.text = "찾는 책이 없습니다."
        }
    }
    
    @IBAction func removeAction(_ sender: Any) {
        myBookManager.removeBook(name: nameTextField.text!)
        outputTextView.text = "\(nameTextField.text!) removed."
        countLabel.text = "\(myBookManager.countBooks())"
    }
    
    @IBAction func showAllBookAction(_ sender: Any) {
//        print("showAllBookAction")
        outputTextView.text = myBookManager.showAllBooks()
    }
}

