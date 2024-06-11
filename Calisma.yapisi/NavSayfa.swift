//
//  NavSayfa.swift
//  Calisma.yapisi
//
//  Created by Mert Baykal on 10/05/2024.
//

import SwiftUI

struct NavSayfa: View {
    
    init(){
        let appearence = UINavigationBarAppearance()
        appearence.backgroundColor = .blue
        appearence.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = appearence
        UINavigationBar.appearance().compactAppearance = appearence
        UINavigationBar.appearance().scrollEdgeAppearance = appearence
    }
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("hello")
            } //.navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Page")
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Button("Back"){
                            print("Back")
                        }.foregroundColor(.white)
                       
                }
                    ToolbarItemGroup(placement: .topBarTrailing){
                        Button("Setting"){
                            print("Clicked Setting")
                        }.foregroundColor(.white)
                        
                        Button{
                            print("Clicked Plus")
                        } label: {
                            Image(systemName: "plus")
                        }.foregroundColor(.white)
                        
                    }
            }
        }
    }
}

#Preview {
    NavSayfa()
}
