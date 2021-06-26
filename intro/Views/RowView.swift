//
//  RowView.swift
//  intro
//
//  Created by Alexander Guitz on 2021-06-24.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack{
            programmer.avatar
                .resizable()
                .frame(width:40, height:40)
                .padding(5)
            VStack(alignment: .leading)
            {
                Text(programmer.name)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(programmer.languages)
                    .font(.subheadline)
            }
            Spacer()
            
            if programmer.favorite{
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .padding()
            }
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(
                        id: 1,
                        name: "Alexander Guitz",
                        languages: "Episerver, Umbraco",
            avatar: Image(systemName: "person.circle.fill"),favorite: true
                    ))
    }
}
