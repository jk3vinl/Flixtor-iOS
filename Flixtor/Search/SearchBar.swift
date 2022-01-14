//
//  SearchBar.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-13.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    
    @State private var isEditing = true
    
    @Binding var isLoading: Bool
    
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                Color.graySearchBackground
                    .frame(height: 36)
                    .cornerRadius(8)
                    .transition(.move(edge: .trailing))
                    .animation(.default)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.graySearchText)
                        .padding(.leading, 10)
                    
                    TextField("Search", text: $text)
                        .padding(7)
                        .padding(.leading, -7)
                        .padding(.horizontal, 10)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        .onTapGesture(perform: {
                            isEditing = true
                        })
                        .animation(.default)
                    
                    if !text.isEmpty {
                        if isLoading {
                            Button(action: {
                                text = ""
                            }, label: {
                                ActivityIndicator(style: .medium, animate: .constant(true))
                                    .configure {
                                        $0.color = .white
                                    }
                            })
                            .padding(.trailing, 32)
                            .frame(width: 35, height: 35)
                            
                        } else {
                            Button(action: {
                                text = ""
                            }, label: {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.graySearchText)
                                    .frame(width: 35, height: 35)
                            })
                            .padding(.trailing, 16)
                        }
                    }
                }
            }
            if isEditing {
                Button(action: {
                    text = ""
                    isEditing = false
                    hideKeyboard()
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                })
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
            
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SearchBar(text: .constant(""), isLoading: .constant(true))
                .padding()
        }
    }
}
