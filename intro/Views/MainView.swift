//
//  MainView.swift
//  intro
//
//  Created by Alexander Guitz on 2021-06-24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
             VStack{
                MapView().frame(height:400)
                ImageView().offset(y: -110)
                Divider().padding()
                ContentView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
