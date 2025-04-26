// ContentView.swift (Updated)
import SwiftUI

struct ContentView: View {
    @State private var isLoggedIn = false
    @State private var selectedAccountType: String? = nil

    var body: some View {
        NavigationStack {
            if isLoggedIn, let accountType = selectedAccountType {
                HomeView(accountType: accountType, isLoggedIn: $isLoggedIn)
            } else {
                VStack(spacing: 40) {
                    Text("ETHNOBOT")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 40)

                    Text("Welcome! Please choose an account type:")
                        .font(.title3)

                    VStack(spacing: 20) {
                        NavigationLink(destination: LoginView(accountType: "Personal", isLoggedIn: $isLoggedIn, selectedAccountType: $selectedAccountType)) {
                            Text(" Personal Account")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                        }

                        NavigationLink(destination: LoginView(accountType: "Family", isLoggedIn: $isLoggedIn, selectedAccountType: $selectedAccountType)) {
                            Text(" Family Account")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                        }

                        NavigationLink(destination: LoginView(accountType: "Teacher", isLoggedIn: $isLoggedIn, selectedAccountType: $selectedAccountType)) {
                            Text(" Teacher Account")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .cornerRadius(12)
                        }
                    }
                    .padding(.horizontal, 40)

                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
