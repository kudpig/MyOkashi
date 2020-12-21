//
//  ViewController.swift
//  MyOkashi
//
//  Created by shinichiro kudo on 2020/12/13.
//  Copyright © 2020 shinichiro kudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // SearchBarのDelegate通知先を設定
        searchText.delegate = self
        // プレースホルダーを設定
        searchText.placeholder = "お菓子の名前を入力してください"
    }

    
    @IBOutlet weak var searchText: UISearchBar!
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    // 検索ボタンをクリック時
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // キーボードを閉じる
        view.endEditing(true)
        
        if let searchWord = searchBar.text {
        // デバックエリアに出力
        print(searchWord)
        }
    
    }

}
