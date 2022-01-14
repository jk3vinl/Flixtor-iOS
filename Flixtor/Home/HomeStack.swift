//
//  HomeStack.swift
//  Flixtor
//
//  Created by Kevin Liu on 2022-01-13.
//

import SwiftUI

struct HomeStack: View {
    var vm: HomeViewModel
    
    var topRowSelection: HomeTopRow
    var selectedGenre: HomeGenre
    
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        ForEach(vm.allCategories, id: \.self) { category in
            let movies = vm.getMovie(forCat: category, andHomeRow: topRowSelection, andGenre: selectedGenre)
            if  !movies.isEmpty {
                VStack {
                    HStack {
                        Text(category)
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(movies) { movie in
                                StandardHomeMovie(movie: movie)
                                    .frame(width: 135, height: 200)
                                    .onTapGesture(perform: {
                                        movieDetailToShow = movie
                                    })
                            }
                        }
                    }
                }
                .padding(.leading, 6)
            }
        }
    }
}

struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                HomeStack(vm: HomeViewModel(), topRowSelection: .home, selectedGenre: .AllGenres, movieDetailToShow: .constant(nil))
            }
            .foregroundColor(.white)
        }
    }
}
