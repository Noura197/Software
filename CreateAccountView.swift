// CreateAccountView.swift
import SwiftUI

struct CreateAccountView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var errorMessage = ""
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 20) {
            Text("Create Account")
                .font(.largeTitle)
                .bold()

            VStack(spacing: 16) {
                TextField("Name", text: $name)
                TextField("Email", text: $email)
                //    .keyboardType(.emailAddress)
                    .autocorrectionDisabled(true)
                //    .textInputAutocapitalization(.never)
                SecureField("Password", text: $password)
                SecureField("Confirm Password", text: $confirmPassword)
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)

            Button("Create Account") {
                if name.isEmpty || email.isEmpty || password.isEmpty {
                    errorMessage = "All fields are required."
                } else if password != confirmPassword {
                    errorMessage = "Passwords do not match."
                } else {
                    UserDefaults.standard.set(email, forKey: "savedEmail")
                    UserDefaults.standard.set(password, forKey: "savedPassword")
                    dismiss()
                }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal)

            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .foregroundColor(.red)
            }

            Spacer()
        }
        .padding()
    }
}
