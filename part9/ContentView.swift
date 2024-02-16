//
//  ContentView.swift
//  part9
//
//  Created by 木村朋広 on 2024/02/16.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAlert = false
    @State var isShowDailog = false

    var body: some View {
        VStack {
            Button("アラート") {
                isShowAlert = true
            }
            .padding()
            Button ("ダイアログ") {
                isShowDailog = true
            }
        }
        .padding()
        .alert("本当に削除しますか？", isPresented: $isShowAlert) {
            Button("削除する", role: .destructive) {
            }
            Button("キャンセル", role: .cancel) {  }
        } message: {
            Text("一度削除したら元に戻せません。")
        }
        .confirmationDialog("タイトル", isPresented: $isShowDailog, titleVisibility: .visible) {
            Button("選択肢1") {

            } 
            Button("選択肢2") {

            }
            Button("選択肢3") {

            }
            Button("選択肢4") {

            }
            Button("キャンセル", role: .cancel) {

            }
        } message: {
            Text("ここにメッセージ")
        }
    }
}

#Preview {
    ContentView()
}
