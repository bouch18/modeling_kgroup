/*
 * Copyright (C) 2015 - 2017, Daniel Dahan and CosmicMind, Inc. <http://cosmicmind.com>.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *    *    Redistributions of source code must retain the above copyright notice, this
 *        list of conditions and the following disclaimer.
 *
 *    *    Redistributions in binary form must reproduce the above copyright notice,
 *        this list of conditions and the following disclaimer in the documentation
 *        and/or other materials provided with the distribution.
 *
 *    *    Neither the name of CosmicMind nor the names of its
 *        contributors may be used to endorse or promote products derived from
 *        this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import UIKit
import Material
import Graph

extension UIImage {
    public class func load(contentsOfFile name: String, ofType type: String) -> UIImage? {
        return UIImage(contentsOfFile: Bundle.main.path(forResource: name, ofType: type)!)
    }
}

struct SampleData {
    public static func createSampleData() {
        let graph = Graph()
        graph.clear()
        
        let c1 = Entity(type: "Category")
        c1["name"] = "話題"
        
        let a1 = Entity(type: "Article")
        a1["title"] = "仮想通貨「NEM」約580億円相当流出"
        a1["detail"] = "http://www.tsr-net.co.jp/news/analysis/20180214_01.html"
        a1["photo"] = UIImage.load(contentsOfFile: "photo11", ofType: "jpg")?.resize(toHeight: 300)
        a1["content"] = "1月26日仮想通貨取引所「coincheck」が不正アクセスを受け、約580億円相当の仮想通貨「NEM」が流出した。原因として仮想通貨取引所では、ネットに接続しない別のサーバーに仮想通貨コインを置く「コールドウォレット」をいう方法で保管していなかった為、犯人に侵入されて盗まれてしまった可能性が高いと言われている。IT企業ではスピードを求められる為、安全性やコンプライアンスが後回しになることがよくある。金銭を直接扱う物は特に慎重になるべきだ。原因をしっかり究明し、セキュリティを向上させることを切に願いたい。"
        
        a1.is(relationship: "Post").in(object: c1)
        
        let a2 = Entity(type: "Article")
        a2["title"] = "2017年 8月 ランサムウェア"
        a2["detail"] = "https://www.npa.go.jp/cyber/ransom/index.html"
        a2["photo"] = UIImage.load(contentsOfFile: "photo9", ofType: "jpg")?.resize(toHeight: 300)
        a2["content"] = "2017年 8月頃に主にwindowsに感染するマルウェアが流行した。上記の画像のような見た目でファイルを削除するとユーザーを脅してお金を請求する。もし感染したら慌てずマルウェアの名前を検索したり警察庁のサイトにアクセスして対策を取ると良い"
        
        a2.is(relationship: "Post").in(object: c1)
        
        
        
        let c2 = Entity(type: "Category")
        c2["name"] = "パスワード"

        let a3 = Entity(type: "Article")
        a3["title"] = "総当たり攻撃"
        a3["detail"] = "facebook.com/healthymind.io"
        a3["photo"] = UIImage.load(contentsOfFile: "photo12", ofType: "jpg")?.resize(toHeight: 300)
        a3["content"] = "考えられるすべてのパスワードを試す攻撃方法。条件として試行回数の上限がないとすれば総当たり攻撃が成功する。しかし、パスワードが長いと試行回数が増えるため、処理能力が高いCPUが必要になる。よって、攻撃されても試行が終了しないためにパスワードは長く、小文字や大文字、数字などを複雑にした物をパスワードにするべきである。"

        a3.is(relationship: "Post").in(object: c2)

        let a4 = Entity(type: "Article")
        a4["title"] = "パスワード管理"
        a4["detail"] = "http://support.zaq.ne.jp/security/password/how.html"
        a4["photo"] = UIImage.load(contentsOfFile: "photo13", ofType: "jpg")?.resize(toHeight: 300)
        a4["content"] = "近年、不正ログインに関する事件が多く、パスワードの管理には十分な注意が必要である。\nパスワードの盗難については、原始的な盗み見から、\nウィルスや不正ログインなど方法は多数存在する。\nパスワードの管理はまず、人に見られない。\nそして、ウィルスの侵入や不正ログインの対策を行う必要がある。\nもし、被害にあった場合は警察庁や国民生活センターに問い合わせて見ると良い。"
        
                a4.is(relationship: "Post").in(object: c2)
        
        
        graph.sync()
    }
}

