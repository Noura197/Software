// LoginView.swift
import SwiftUI

struct LoginView: View {
    var accountType: String
    @Binding var isLoggedIn: Bool
    @Binding var selectedAccountType: String?

    @State private var email = ""
    @State private var password = ""
    @State private var loginMessage = ""
    @State private var showCreateAccount = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Login to ETHNOBOT")
                .font(.title)
                .bold()
                .padding(.top, 40)

            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)

            Button("Login") {
                let savedEmail = UserDefaults.standard.string(forKey: "savedEmail") ?? ""
                let savedPassword = UserDefaults.standard.string(forKey: "savedPassword") ?? ""
                if email == savedEmail && password == savedPassword {
                    isLoggedIn = true
                    selectedAccountType = accountType
                } else {
                    loginMessage = "Invalid email or password."
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal, 40)

            Button("Create a new account") {
                showCreateAccount = true
            }

            if !loginMessage.isEmpty {
                Text(loginMessage)
                    .foregroundColor(.red)
            }

            Spacer()
        }
        .padding()
        .sheet(isPresented: $showCreateAccount) {
            CreateAccountView()
        }
    }
}
