//
//  MovieCell.h
//  Flix
//
//  Created by samanthaburak on 6/23/21.
//

#import <UIKit/UIKit.h>
#import "Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface MovieCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;

@property (strong, nonatomic) Movie *movie;

- (void)updateWithMovie:(Movie *)movie;

@end

NS_ASSUME_NONNULL_END
