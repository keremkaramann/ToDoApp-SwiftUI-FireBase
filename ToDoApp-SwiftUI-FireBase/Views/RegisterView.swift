//
//  RegisterView.swift
//  ToDoApp-SwiftUI-FireBase
//
//  Created by Kerem Karaman on 17.02.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    @Environment(\.colorScheme) var colorScheme
    @State private var showingAlert = false
    var body: some View {
        NavigationStack{
            VStack{
                //Header
                HeaderView()
                
                //register
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                            .font(.subheadline)
                    }
                    Section(header: Text("Register Form").bold().font(.title2)){
                        TextField("Full Name", text: $viewModel.name)
                            .autocorrectionDisabled()
                        TextField("Email Address",text: $viewModel.email)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                        SecureField("Password",text: $viewModel.password)
                    }
                }
                .frame(height: 290)
                .background(colorScheme == .dark ? Color.black : Color.white)
                .scrollContentBackground(.hidden)
                ButtonXLView(title: "Register", action:{viewModel.register()})
                    .frame(height: 50)
                    .padding(.horizontal,20.00)
                    Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
