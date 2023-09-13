//
//  Homescreen.swift
//  Notes
//
//  Created by nham on 13/09/2023.
//

import SwiftUI

struct Homescreen: View {
    @State private var searchText = ""
    @State private var openSheet: Bool = false
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
                    Button {
                        openSheet.toggle()
                    } label: {
                        Image(systemName: "folder.badge.plus")
                    }
                    .sheet(isPresented: $openSheet) {
                        NavigationStack {
                            Text("Hi")
                                .navigationTitle("New Folder")
                                .navigationBarTitleDisplayMode(.inline)
                                .toolbar {
                                    ToolbarItemGroup (placement: .bottomBar) {
                                        Button {
                                            openSheet.toggle()
                                        } label: {
                                            Text("Cancel")
                                        }
                                        Button {
                                            openSheet.toggle()
                                        } label: {
                                            Text("Done")
                                        }


                                    }
                                }
                        }
                    }
                    NavigationLink {
                        foldersDetails()
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
            }
            .searchable(text: $searchText) {
                HStack {
                    Image(systemName: "gear")
                        .foregroundColor(Color.accentColor)
                    Text("Shared Notes")
                        .foregroundColor(Color.black)
                        .font(.subheadline)
                }
                .searchCompletion("Shared Notes")
                HStack {
                    Image(systemName: "lock.fill")
                        .foregroundColor(Color.accentColor)
                    Text("Locked Notes")
                        .foregroundColor(Color.black)
                        .font(.subheadline)
                }
                .searchCompletion("Locked Notes")
            }
        }
    }
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen()
    }
}
