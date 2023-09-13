//
//  Homescreen.swift
//  Notes
//
//  Created by nham on 13/09/2023.
//

import SwiftUI

struct Homescreen: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            List {
                Section {
                    foldersFile(imgName: "note.text", fileName: "Quick Notes")
                    foldersFile(imgName: "person.crop.circle", fileName: "Shared")
                }
                Section (header: Text("iCloud")) {
                    foldersFile(imgName: "folder", fileName: "All iCloud")
                    foldersFile(imgName: "folder", fileName: "Notes")
                    foldersFile(imgName: "gearshape", fileName: "Notes")
                    foldersFile(imgName: "gearshape", fileName: "Notes")
                    foldersFile(imgName: "gearshape", fileName: "Notes")
                }.headerProminence(.increased)
            }
            .navigationTitle("Folders")
            .toolbar {
                Button {
                    print("Clicked")
                } label: {
                    Text("Edit")
                        .foregroundColor(Color.yellow)
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    NavigationLink {
                        foldersDetails()
                    } label: {
                        Image(systemName: "folder.badge.plus")
                    }
                    NavigationLink {
                        foldersDetails()
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
            }
            .searchable(text: $searchText)
        }
    }
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen()
    }
}
