//
//  TopMoviePreview.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-12.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    @Binding var movieDetailToShow: Movie?
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        
                        HStack {
                            Text(category)
                                .font(.subheadline)
                                .padding(.horizontal, -5)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 5))
                            }
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false) {
                        //
                    }
                    
                    Spacer()
                    
                    PlayButton(text: "Play", imageName: "play.fill") {
                        //
                    }
                    .frame(width: 100)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        movieDetailToShow = movie
                    }
                    
                    Spacer()
                }
                .padding(.vertical, 14)
            }
            .background(
                LinearGradient
                    .blackOpacityGradient
                    .padding(.top, 400)
            )
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1, movieDetailToShow: .constant(nil))
    }
}
