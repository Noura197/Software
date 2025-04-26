// ExploreView.swift
import SwiftUI

struct ExploreView: View {
    @State private var userQuery: String = ""
    @State private var responseText: String = "Welcome to EthnoBot's Explore area! Type a question below."
    @State private var rating: Int = 0

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Explore EthnoBot")
                .font(.largeTitle)
                .bold()

            Text("Ask a question:")
                .font(.headline)

            if !responseText.isEmpty {
                Text(responseText)
                    .frame(maxWidth: .infinity, minHeight: 120, alignment: .topLeading)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
            }

            TextField("Type your question here...", text: $userQuery)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("Ask") {
                responseText = "You asked: \(userQuery)\n\n[Sample EthnoBot response based on input...]"
                userQuery = ""
                rating = 0 // Reset rating when a new response is generated
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(10)

            if !responseText.isEmpty {
                Text("Rate this response:")
                    .font(.headline)

                HStack(spacing: 8) {
                    ForEach(1...5, id: \ .self) { star in
                        Image(systemName: star <= rating ? "star.fill" : "star")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .foregroundColor(.yellow)
                            .onTapGesture {
                                rating = star
                            }
                    }
                }
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ExploreView()
}
