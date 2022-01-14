//
//  ComingSoonTemplate.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-13.
//

import SwiftUI

struct ComingSoonTemplate: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("Coming Soon")
                    Spacer()
                }
                .padding()
                .font(.system(size: 18, weight: .bold))
                
                ZStack {
                    Circle()
                        .foregroundColor(.graySearchBackground)
                        .padding(.horizontal, 100)
                    
                    Image(systemName: "play.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                        .foregroundColor(.gray)
                }
                .frame(height: 275)
                .padding(.top, 75)
                
                VStack(spacing: 20) {
                    Text("New Content Coming Soon")
                        .font(.title2)
                        .bold()
                    Text("Find new shows and movies that you can expect to see on Flixtor soon.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                    
                    Button(action: {
                        // Show shows that can be downloaded
                    }, label: {
                        Text("Feature Coming Soon")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white)
                    })
                }
                
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct ComingSoonTemplate_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ComingSoonTemplate()
        }
    }
}
