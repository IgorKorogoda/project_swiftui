//
//  HomeUI.swift
//  ProjectMain
//
//  Created by Игорь on 06.11.2025.
//

import SwiftUI

struct HomeUI: View {
    
    var body: some View {
        NavigationStack {
                ZStack {
                    Color.green.opacity(0.5)
                        .ignoresSafeArea()
                        Text("Hello")
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack(spacing: 14) {
                            toolbarImage(name: "location.fill.viewfinder")
                            
                            toolbarTitle
                            
                            
                            
                            toolbarImage(name: "chevron.down")
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Circle()
                            .frame(width: 42, height: 42)
                    }
                }
        }
    }
    
}

// MARK: - Toolbar Image

private extension HomeUI {
     
    func toolbarImage(name: String) -> some View {
        Image(systemName: name)
        .resizable()
        .scaledToFit()
        .frame(width: 21, height: 21)
        .foregroundStyle(.secondary)
        .padding(.vertical, 2)
    }
    
}


// MARK: - Toolbar title

private extension HomeUI {
    
    var toolbarTitle: some View {
        Text("Mohammadpur, Dhaka")
            .font(.caption)
            .foregroundStyle(.primary)
    }
    
}

#Preview {
    HomeUI()
}
