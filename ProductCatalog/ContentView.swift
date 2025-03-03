//
//  ContentView.swift
//  ProductCatalog
//
//  Created by Francisco Jean on 25/02/25.
//

import SwiftUI

struct Product {
    var id: UUID = UUID()
    var productName: String 
    var price: Double 
    var image: String
    var webImage: String
}

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.8448439963, blue: 0.6209953235, alpha: 1)), .white]), 
                                   startPoint: .top, 
                                   endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Product Catalog")
                    . font(.custom( "Montserrat-Bold", size: 25))
                    .padding(.top, 30)
                ProductListView()
            }
        }
    }
}

struct ProductRowView: View {
    let product: Product
    
    var body: some View {
        HStack (spacing: 50) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack (alignment: .leading) {
                Text(product.productName)
                    .bold()
                    .font(.title3)
                Text("$\(product.price, specifier: "%.2f")")
                    .foregroundColor(.gray)
                
            }
            Image(systemName: "heart.fill")
        }
        .background()
    }
}

struct ProductListView: View {
    
    let products = [
        Product(productName: "iPhone 14", price: 999.99, image: "iphone", webImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkhrwT46KvWllUBqShDiYroi39GyEz8gVSLw&s"),
        Product(productName: "MacBook Air", price: 129.99, image: "macbook", webImage: "https://shop.dupapier.com.mx/cdn/shop/files/LAPTOP-APPLE-13-MACBOOK-AIR-M1-CHIP-8N-CPU-7N-GPU-256GB-8GB-RAM-GRIS-ESPACIAL_L002-069_1.jpg?v=1725386773&width=1200"),
        Product(productName: "iPad Pro", price: 1099.99, image: "ipad", webImage: "https://co.tiendasishop.com/cdn/shop/files/iPad_Pro_Wi-Fi_11_in_4th_generation_Space_Gray_PDP_Image_Position-1a_COES_3e13855d-13bd-4f34-8b68-3c709128c5c2.jpg?v=1709682464&width=823")
    ]
    
    var body: some View {
        List(products, id: \.id) { product in
            ProductRowView(product: product) 
        }
    }
}

#Preview {
    ContentView()
}
