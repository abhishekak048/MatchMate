//
//  ProfileCardView.swift
//  MatchMate
//
//  Created by Abhishek Kumar on 07/03/25.
//
import SwiftUI

struct ProfileCardView: View {
    var item: Result
    var rejected: (Result, Bool) -> Void
    var Accepted: (Result, Bool) -> Void

    
    var body: some View {
        VStack {
            // Profile Image
            AsyncImage(url: URL(string:item.picture.medium))
            // Name
            Text("\(item.name.first),\(item.name.last)")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            // Age and Location
            Text("\(item.dob.age),\(item.location.state)")
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 10)
            
            // Accept & Reject Buttons
            HStack(spacing: 40) {
                Button(action: {
                    print("Rejected \(item.name)")
                    rejected(item, true) // Send reject action

                    
                }) {
                    Image(systemName: "xmark.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.gray)
                }.buttonStyle(PlainButtonStyle())
                
                Button(action: {
                    print("Accepted \(item.name)")
                    Accepted(item, true) // Send reject action

                }) {
                    Image(systemName: "checkmark.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.green)
                }.buttonStyle(PlainButtonStyle())
            }
            .padding()
        }
        .frame(width: 300)
        .padding()
        .background(RoundedRectangle(cornerRadius: 15).fill(Color.white).shadow(radius: 5))
    }
}
