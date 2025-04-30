//
//  LoadingView.swift
//  WeatherSwiftUI
//
//  Created by Khan Nabeel Shahid on 28/04/2025.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
