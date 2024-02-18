//
//  LoginView.swift
//  ToDoApp-SwiftUI-FireBase
//
//  Created by Kerem Karaman on 17.02.2024.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationStack{
            VStack{
                //header
              HeaderView()
                //form
                Form{
                    TextField("Enter your email",text: $email)
                        .padding(7)
                    SecureField("Enter your password",text: $password)
                        .padding(7)
                }
                .frame(height: 140)
                .background(colorScheme == .dark ? Color.black : Color.white)
                .scrollContentBackground(.hidden)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 6)
                            .foregroundStyle(.primary)
                        Text("Login")
                            .foregroundStyle(.white)
                    }
                })
                .frame(height: 50)
                .padding(.horizontal,20.00)
                Spacer()
                //footer
                VStack{
                    Text("Not a member?")
                    NavigationLink("Create New Account", destination: RegisterView())
                }
                
            }
        }
    }
}

#Preview {
    LoginView()
}
