//
//  MoreLikeThis.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-13.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies: [Movie]
    
    @Binding var movieDetailToShow: Movie?
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            
            ForEach(0..<movies.count) { index in
                StandardHomeMovie(movie: movies[index])
                    .frame(height: 175)
                    .padding(.vertical, 12)
                    .onTapGesture(perform: {
                        movieDetailToShow = movies[index]
                    })
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies, movieDetailToShow: .constant(nil))
    }
}
