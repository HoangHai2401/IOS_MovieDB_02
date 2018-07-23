//
//  Movie.swift
//  TheMovies
//
//  Created by Trịnh Giang Đông on 7/23/18.
//  Copyright © 2018 TrinhGiangDong. All rights reserved.
//

import Foundation
import ObjectMapper

class Movie: BaseModel {
    var posterPath = ""
    var adult = false
    var overview = ""
    var releaseDate: Date = Date()
    var genreId = [Int]()
    var id: Int = 0
    var originalTitle = ""
    var originalLanguage = ""
    var title = ""
    var backdropPath = ""
    var popularity = ""
    var voteCount = ""
    var video = ""
    var voteAverage: Float = 0.0
    //property only in movie detail
    var budget: Int = 0
    var genres = [Genre]()
    var imdbId = ""
    var revenue: Int = 0
    var runtime: Int = 0
    var status = ""
    var tagline = ""
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        posterPath <- map["poster_path"]
        adult <- map["adult"]
        overview <- map["overview"]
        releaseDate <- map["release_date"]
        genreId <- map["genre_ids"]
        id <- map["id"]
        originalTitle <- map["original_title"]
        originalLanguage <- map["original_language"]
        title <- map["title"]
        backdropPath <- map["backdrop_path"]
        popularity <- map["popularity"]
        voteCount <- map["vote_count"]
        video <- map["video"]
        voteAverage <- map["vote_average"]
        //only in movie detail
        budget <- map["budget"]
        genres <- map["genres"]
        imdbId <- map["imdb_id"]
        revenue <- map["revenue"]
        runtime <- map["runtime"]
        status <- map["status"]
        tagline <- map["tagline"]
    }
}
