//
//  ResultEkran.swift
//  Calisma.yapisi
//
//  Created by Mert Baykal on 10/05/2024.
//

import SwiftUI

struct ResultEkran: View {
    @Environment(\.presentationMode) var dm
    var body: some View {
        VStack(spacing: 50) {
            Text("Result").font(.system(size: 50))
            Button("Close"){
                dm.wrappedValue.dismiss()
            }.font(.system(size: 25))
        }
        
    }
}

#Preview {
    ResultEkran()
}
