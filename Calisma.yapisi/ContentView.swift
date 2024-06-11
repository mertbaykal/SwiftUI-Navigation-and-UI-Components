//
//  ContentView.swift
//  Calisma.yapisi
//
//  Created by Mert Baykal on 08/05/2024.
//
// segue ile gecis
import SwiftUI

struct ContentView: View {
    @State private var sayfaGecis = false
    var body: some View {
        NavigationStack {
            VStack {
               // NavigationLink(destination: GameEkran()){
                   // Text("Start")
               // }
                Button("Start"){
                    sayfaGecis = true
                }
                
            }.navigationTitle("Homepage")
            .padding()
            .navigationDestination(isPresented: $sayfaGecis){
                let userInfo = Users(isim: "mert", yas: 22, boy: 80, bekar: false)
                GameEkran(user: userInfo)
            }
        }
    }
}

#Preview {
    ContentView()
}
