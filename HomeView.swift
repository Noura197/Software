// HomeView.swift
import SwiftUI

struct HomeView: View {
    var accountType: String
    @Binding var isLoggedIn: Bool

    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to Ethnobot!")
                .font(.title)
                .bold()

            Text("You're logged in as \(accountType) 🎉")

            NavigationLink(destination: ExploreView()) {
                Text("🔍 Explore")
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }

            Button("Log out") {
                isLoggedIn = false
            }
            .foregroundColor(.red)
        }
        .padding()
    }
}
