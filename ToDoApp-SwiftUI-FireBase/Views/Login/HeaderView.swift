//
//  HeaderView.swift
//  ToDoApp-SwiftUI-FireBase
//
//  Created by Kerem Karaman on 17.02.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("greenLogo")
                .resizable()
                .frame(width: 150,height: 150)
            Text("My ToDo")
                .font(.system(size: 50))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top,30)
        }.padding(.top,100)
    }
}

#Preview {
    HeaderView()
}
