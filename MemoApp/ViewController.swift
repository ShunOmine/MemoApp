//
//  ViewController.swift
//  MemoApp
//
//  Created by 大嶺舜 on 2019/08/03.
//  Copyright © 2019 大嶺舜. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var deleteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // textViewがUITextViewDelegateを使えるようにします。
        textView.delegate = self
        
         // AppDelegateを参照する為の定数。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        // AppDelegateに定義したlastTextを参照し、textViewに格納する。
        textView.text = appDelegate.lastText
    }
    
    func textViewDidChange(_ textView: UITextView) {
        // AppDelegateを呼び出して変数に格納します。
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        // AppDelegateに記述した"lastText"に入力されている内容を格納します
        appDelegate.lastText = textView.text
    }

    // ボタンをクリックするとテキストを削除
    @IBAction func deleteText(_ sender: Any) {
        textView.text = nil
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.lastText = nil
    }
}

