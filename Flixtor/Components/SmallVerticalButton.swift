//
//  SmallVerticalButton.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-12.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    
    var isOnImage: String
    var isOffImage: String
    
    @State var isOn: Bool
    
    var imageName: String {
        isOn ? isOnImage : isOffImage
    }
    
    
    
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            isOn.toggle()
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            SmallVerticalButton(text: "My List",
                                isOnImage: "checkmark",
                                isOffImage: "plus",
                                isOn: false) {
                print("Tapped")
            }
        }
        
    }
}
