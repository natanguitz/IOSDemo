//
//  ImageView.swift
//  intro
//
//  Created by Alexander Guitz on 2021-06-23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("alexguitz")
                .resizable()
                //.padding(50)
                .frame(width: 200, height: 200, alignment: .center)
                //.background(Color .green)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.green, lineWidth: 4))
                .shadow(color: Color.green, radius: 5)
            
            
            Image(systemName: "link")
                .resizable()
                .padding(10)
                .frame(width: 50, height: 50, alignment: .center)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.pink)
            
                
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
