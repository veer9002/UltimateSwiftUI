//
//  ContentView.swift
//  UltimateSwiftUI
//
//  Created by Manish Sharma on 29/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var width: CGFloat = 0.0
    @State var height: CGFloat = 0.0
    
    var body: some View {
        
        Text("Hello Workd")
            .background {
                GeometryReader { geometry in
                    let size = geometry.size
                    
                    Color.green
                        .onAppear{
                            width = size.width
                            height = size.height
                        }
                }
            }
            .position(x: 100 + width/2 ,y: 100 + height/2)
        
        
//        VStack {
//            CardComponent(symbolName: "house", title: "Home for Rent", subtitle: "#xxx123456")
//            CardComponent(symbolName: "car", title: "Car for Rent", subtitle: "#xxx123")
//            CardComponent(symbolName: "bicycle", title: "Bike for Rent", subtitle: "#xxx23")
//        }
    }
}

struct CardComponent: View {
    var symbolName: String
    var title: String
    var subtitle: String
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .fill(.blue.opacity(0.75))
                    .frame(width: 50, height: 50)
                Image(systemName: symbolName)
                    .foregroundColor(.white)
            }
            VStack {
                Text(title)
                    .font(.title)
                Text(subtitle)
                    .font(.caption)
                    .fontWeight(.semibold)
            }
            .padding(.horizontal)
        }
        .padding()
        .frame(width: 300)
        .background {
            RoundedRectangle(cornerRadius: 5)
                .stroke()
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
