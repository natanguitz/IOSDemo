//
//  ListDetailView.swift
//  intro
//
//  Created by Alexander Guitz on 2021-06-25.
//

import SwiftUI



struct ListDetailView: View {
    
    var programmer : Programmer
    @Binding var favorite: Bool
    
    var body: some View {
        VStack{
            programmer.avatar
                .resizable()
                . frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.green, radius: 5)
            
            
            HStack{
                Text(programmer.name).font(.largeTitle)
                Button {
                    favorite.toggle()
                }label: {
                    if favorite{
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }else{
                        Image(systemName: "star")
                            .foregroundColor(.black)
                    }
                    
                    
                }
            }
            Text(programmer.languages).font(.largeTitle)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id:1, name: "Alexander Guitz", languages: "Episerver, Umbraco", avatar: Image(systemName: "person.circle.fill"), favorite: true)
                       , favorite: .constant(false))
    }
}
