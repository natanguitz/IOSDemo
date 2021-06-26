//
//  ListView.swift
//  intro
//
//  Created by Alexander Guitz on 2021-06-25.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject{
    
    @Published var programmers = [
        Programmer(id:0, name: "Alexander Guitz", languages: "C#, Swift", avatar: Image("alexguitz"), favorite: true),
        Programmer(id:1, name: "Sergio Hurtarte", languages: "Java, Kotlin", avatar: Image(systemName: "person.circle.fill"), favorite: false),
        Programmer(id:2, name: "Sara Perez", languages: "PHP, Laravel", avatar: Image(systemName: "person.circle.fill"),favorite: false),
        Programmer(id:3, name: "Gabriela Sanchez", languages: "React, VueJs", avatar: Image(systemName: "person.circle.fill"), favorite: true),
        Programmer(id:4, name: "Carlos Gonzalez", languages: "Python, Flask", avatar: Image(systemName: "person.circle.fill"), favorite: false),
        Programmer(id:5, name: "Gordon Shonway", languages: "MsDos, VB", avatar: Image(systemName: "person.circle.fill"), favorite: false),
    ]
}



struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter{ programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        
        NavigationView{
            VStack{
                Toggle(isOn: $showFavorites) {
                    Text("Show Favorites")
                }
                .padding()
              
                    List(filteredProgrammers, id: \.id){
                        programmer in
                        NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite))
                        {
                            RowView(programmer: programmer)
                        }
                    }
                    
            }.navigationTitle("Programmers")
        }
        
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}
