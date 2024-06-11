//
//  GameEkran.swift
//  Calisma.yapisi
//
//  Created by Mert Baykal on 08/05/2024.
//

import SwiftUI

struct GameEkran: View {
    @Environment(\.presentationMode) var pm // geri gitme
    @State private var resultEkran = false
    
    var user = Users()
    
    var body: some View {
        VStack(spacing: 50){
            
            Text("\(user.isim) - \(user.yas) - \(user.boy) - \(String(user.bekar))")
            Button("Finish"){ resultEkran = true }
            Button("Back"){
                pm.wrappedValue.dismiss()// geri gitme
            }
        }   .navigationTitle("Gamepage")
            .sheet(isPresented: $resultEkran){
                ResultEkran()
            }
    }
}

#Preview {
    GameEkran()
}
