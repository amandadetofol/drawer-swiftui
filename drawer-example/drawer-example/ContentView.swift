//
//  ContentView.swift
//  drawer-example
//
//  Created by Amanda Detofol on 22/05/22.
//

import SwiftUI
import Drawer

struct ContentView: View {
    
    @State var heights = [CGFloat(100), CGFloat(300)]
    
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView{
                    Text("Welcome to DrawerTest App!")
                }
                
                Drawer(heights: $heights) {
                    ZStack{
                        Color(UIColor.secondarySystemBackground)
                        VStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 60, height: 8, alignment: .center)
                                .background(Color.black)
                                .padding()
                            DrawerContentView()
                            Spacer()
                        }
                    }
                }
                
            }.navigationTitle(Text("Home"))
        }
    }
}

struct DrawerContentView: View {
    var body: some View {
        Text("Drawer Content View")
            .padding()
            .background(Color.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
