//
//  foldersFile.swift
//  Notes
//
//  Created by nham on 13/09/2023.
//

import SwiftUI

struct foldersFile: View {
    var imgName: String
    var fileName: String
    var body: some View {
        NavigationLink {
            foldersDetails()
        } label: {
            HStack {
                Image(systemName: imgName)
                    .foregroundColor(Color.accentColor)
                Text(fileName)
                    .font(.subheadline)
                Spacer()
                Text("24")
                    .foregroundColor(Color.gray)
                    .font(.subheadline)
            }
        }
    }
}
