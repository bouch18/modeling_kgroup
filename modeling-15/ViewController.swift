//
//  ViewController.swift
//  modeling-15
//
//  Created by 後藤大和 on 2017/12/08.
//  Copyright © 2017年 ryukyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myTextView: UITextView = UITextView(frame: CGRect(x:0, y:0, width:self.view.frame.width, height:self.view.frame.height))
        myTextView.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        myTextView.text = " \n  \n 本アプリ名を　　とする.  \n本サイトが提供するアプリ内サービス等を以下本サービスと明記する.  \n\n 第1章(提供サービス)  \n本アプリが提供する本サービスは, 日本国内のみのサービスとし, 海外へのサービス提供は行っていない.   \n 本サービスを,会社, 業務で使用しているパソコンや, スマートフォンからのダウンロードは禁止とする.  \nまた, 禁止されている項目に該当する状態で本サービスをダウンロードをし,問題やトラブルが発生した場合でも, 本アプリ運営は一切の責任を負わない. \n本サービスの提供するコンテンツは不定期である, 本サイト運営者はその責任を一切問わない. \n  \n 第2章(会員情報) \n会員登録とは, 本アプリ内で定められている契約同意確認画面にて, 本規約をすべて読み, 同意したのち再確認でもどうした時点で, 本アプリとの利用規約, 提供契約が締結し, 本アプリの会員(以下会員と表記する)と定め, ユーザIDが発行されることを言う. \n \n 第3章(利用期間)\n会員が本サービスを利用できる期間は, ユーザIDが発行されてから90日間と定め, 90日後は自動に退会となる. \n 利用可能期間の延長をする場合は, 本アプリ運営に連絡する.\n ただし, 振込期間を過ぎても料金未納の場合, 利用可能サーブスの申請がされる.\n  \n 第4章(自己責任の原理)   \n 会員はユーザID, パスワードを自らにより管理しなくてはいけない.  \n 失念してしまった場合でも, 本アプリの運営側が一切の責任を問わない.  \n   \n 第5章(サービス利用料)  \n  利用料金は会員登録が完了し, ユーザIDが発行された時点で発生する. \n 利用料金の申し込み期限は, 利用料金が発生した日から3日以内に支払うものとする.  \n ただし, 年末年始,祝日等で金融機関が休日と重なる場合は, 金融機関の営業日翌日までに振り込むものとする.  \n 本サービスの利用料金は, 80,000円とし, その他の利用料金は一切発生しない.  \n ただし,支払いに必要な手数料等は会員の負担とする. \n   支払われた利用料金は, 原則として過払い以外の返金は認められないものとする. \n 利用料金の決済方法は,　銀行振込のみとし,その他の支払い方法は受け付けないものとする.  \n 振込の際, 振込依頼人名義には, 本サイトから発行されたユーザIDを記入して振込を行い,万一,会員名義のまま振込を行ってしまった場合, お問い合わせフォームにユーザIDと振込依頼人を明記し, 問い合わせを行う.  \n   \n 第6章(登録通知表示)   \n 登録完了通知画面(以下通知画面とする)とは,会員が本サービスを利用した時点で表示されるものであり,電子機器端末の画面上で定期的に表示されるものであり, この画面が表示されることを会員は承諾するものとする.  \n   \n   \n   \n  \n   \n   \n   \n   \n   \n   \n   \n   \n  "
        myTextView.font = UIFont.systemFont(ofSize: CGFloat(20))
        myTextView.textColor = UIColor.black
        myTextView.textAlignment = NSTextAlignment.left
        myTextView.dataDetectorTypes = UIDataDetectorTypes.all //日付や数字の色を変更する
        myTextView.isEditable = false;
        myTextView.delegate = self;
        
        // TextViewをViewに追加する.
        self.view.addSubview(myTextView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //テキストビューが変更された
    func textViewDidChange(textView: UITextView) {
        print("textViewDidChange : \(textView.text)");
    }
    
    // テキストビューにフォーカスが移った
    func textViewShouldBeginEditing(textView: UITextView) -> Bool {
        print("textViewShouldBeginEditing : \(textView.text)");
        return true
    }
    
    // テキストビューからフォーカスが失われた
    func textViewShouldEndEditing(textView: UITextView) -> Bool {
        print("textViewShouldEndEditing : \(textView.text)");
        return true
    }   
}

