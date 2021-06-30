//
//  MovieCell.m
//  Flix
//
//  Created by samanthaburak on 6/23/21.
//

#import "MovieCell.h"
#import "Movie.h"
#import "UIImageView+AFNetworking.h"

@implementation MovieCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



//Refresh the cell
- (void)updateWithMovie:(Movie *)movie {
    
    NSLog(@"%@", movie.title);
    self.titleLabel.text = movie.title;
    self.synopsisLabel.text = movie.synopsis;
   
    self.posterView.image = nil;
    [self.posterView setImageWithURL:movie.posterUrl];
    
}
 

@end
