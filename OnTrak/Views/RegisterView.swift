//
//  RegisterView.swift
//  OnTrak
//
//  Created by Nathan LaBar on 5/23/25.
//

import SwiftUI

//Registration screen 
struct RegisterView: View {
    //input data variables
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register",
                       subtitle: "Get On Trak!",
                       angle: -12.5,
                       background: .green)
        
            //registration form
            Form {
                
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                OTButton(title: "Create Account",
                         background: .yellow)
                {
                    //register
                    viewModel.register()
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
