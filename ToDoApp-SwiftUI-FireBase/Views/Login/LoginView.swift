//
//  LoginView.swift
//  ToDoApp-SwiftUI-FireBase
//
//  Created by Kerem Karaman on 17.02.2024.
//

import SwiftUI

struct LoginView: View {
        
    var body: some View {
        NavigationStack{
            VStack{
                //header
              HeaderView()
                //form
              FormView()
                //footer
                VStack{
                    Text("Not a member?")
                    NavigationLink("Create New Account", destination: RegisterView())
                }
                .padding(.bottom,100)
            }
        }
    }
}

#Preview {
    LoginView()
}
