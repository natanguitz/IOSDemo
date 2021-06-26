//
//  ContentView.swift
//  intro
//
//  Created by Alexander Guitz on 2021-06-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("alexguitz.com IOS App 2021 ")
                .font(.title)
                .foregroundColor(Color .white)
                .padding()
                .background(Color .pink)
            
            Spacer()
            
            ZStack {
                Text("")
                    .frame(
                        maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                        maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                        alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                    ).background(Color.white)
                    .padding()
                Text("").frame(
                    maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                ).background(Color.red)
                .padding(20)
                Text("").frame(
                    maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                ).background(Color.blue)
                .padding(40)
                Text("").frame(
                    maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                    maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                    alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                ).background(Color.green)
                .padding(60)
            }
            
            HStack{
                Text("Alexander Guitz ")
                    .padding()
                    .background(Color .green)
                
                Spacer()
                
                Text("Software Developer")
                    .padding()
                    .background(Color .blue)
            }
        }.background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
