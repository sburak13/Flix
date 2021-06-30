//
//  Movie.m
//  Flix
//
//  Created by samanthaburak on 6/30/21.
//

#import "Movie.h"

@implementation Movie

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.title = dictionary[@"title"];
        self.synopsis = dictionary[@"overview"];
        
        NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
        NSString *posterURLString = dictionary[@"poster_path"];
        NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
        
        self.posterUrl = [NSURL URLWithString:fullPosterURLString];
        
        self.date = dictionary[@"release_date"];
        
        NSString *backdropURLString = dictionary[@"backdrop_path"];
        NSString *fullBackdropURLString = [baseURLString stringByAppendingString:backdropURLString];
        self.backdropUrl = [NSURL URLWithString:fullBackdropURLString];
        
    }
    
    return self;
}

+ (NSArray *)moviesWithDictionaries:(NSArray *)dictionaries {
   // Implement this function
    NSMutableArray *movies = [[NSMutableArray alloc] init];
    for (NSDictionary *dictionary in dictionaries) {
        //Movie *movie = initWithDictionary:dictionary// Call the Movie initializer here
        Movie *movie = [[Movie alloc] initWithDictionary:dictionary];
        [self.movies addObject:movie];
    }
    
    return movies;
}


@end
