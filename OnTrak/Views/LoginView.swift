//
//  LoginView.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //header
                HeaderView(title: "OnTrak", subtitle: "Stay On Trak", angle: 12.5, background: .red)
                
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                //login form
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    OTButton(title: "Log In",
                             background: .red)
                    {
                        //attempt log in
                        viewModel.login()
                    }
                }
            
                
                //create account
                VStack {
                    Text("Don't have an account?")
                        .font(.caption)
                    
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom, 25)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
