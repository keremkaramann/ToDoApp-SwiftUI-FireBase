//
//  FormView.swift
//  ToDoApp-SwiftUI-FireBase
//
//  Created by Kerem Karaman on 17.02.2024.
//

import SwiftUI

struct FormView: View {    
    @StateObject var viewModel = LoginViewViewModel()
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Form{
            if !viewModel.errorMessage.isEmpty {
                Text(viewModel.errorMessage)
                    .foregroundStyle(.red)
                    .font(.subheadline)
            }
            TextField("Enter your email",text: $viewModel.email)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .padding(7)
            SecureField("Enter your password",text: $viewModel.password)
                .padding(7)
        }
        .frame(height: 200)
        .background(colorScheme == .dark ? Color.black : Color.white)
        .scrollContentBackground(.hidden)
        
        ButtonXLView(title: "Login", action:{viewModel.login()})
        .frame(height: 50)
        .padding(.horizontal,20.00)
        Spacer()
    }
}

#Preview {
    FormView()
}
