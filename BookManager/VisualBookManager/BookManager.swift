//
//  BookManager.swift
//  BookManager
//
//  Created by 이동기 on 2022/05/12.
//

import Foundation

class BookManager {
    var bookList = [Book]()
    
    func registerBook(bookObject: Book) {
        bookList += [bookObject]
    }
    
    func showAllBooks() -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name : \(bookTemp.name!)\n"
            strTemp += "Genre : \(bookTemp.genre!)\n"
            strTemp += "Author : \(bookTemp.author!)\n"
            strTemp += "---------------\n"
        }
        return strTemp
    }

    func countBooks() -> Int {
        return bookList.count
    }

    // 검색해서 안 나올수도 있기 떄문에 옵셔널 타입
    func searchBook(name: String) -> String? {
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name {
                strTemp += "Name : \(bookTemp.name!)\n"
                strTemp += "Genre : \(bookTemp.genre!)\n"
                strTemp += "Author : \(bookTemp.author!)\n"
                strTemp += "---------------\n"
                return strTemp
            }
        }
        return nil
    }

    func removeBook(name: String) {
        for (index, value) in bookList.enumerated() {
            if value.name == name {
                bookList.remove(at: index)
                print("책 \(name)이 삭제되었습니다.")
            }
        }
    }
}
