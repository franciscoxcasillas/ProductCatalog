//
//  ContentView.swift
//  ProductCatalog
//
//  Created by Francisco Jean on 25/02/25.
//

import SwiftUI

struct ContentView: View {
    
    struct Product {
        var id: UUID
        var productName: String 
        var price: Double 
        var image: String
        var webImage: String
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.478, blue: 1, alpha: 1)), .white]), 
                                   startPoint: .top, 
                                   endPoint: .bottom)
                        .ignoresSafeArea()
            VStack {
                Text("Product Catalog")
                    . font(.custom( "Montserrat-Bold", size: 25))
                    .padding(.top, 30)
                ScrollView {
                    
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
