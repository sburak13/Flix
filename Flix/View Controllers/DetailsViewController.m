//
//  DetailsViewController.m
//  Flix
//
//  Created by samanthaburak on 6/23/21.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"
#import <QuartzCore/QuartzCore.h>

@interface DetailsViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *backdropView;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
//    NSString *posterURLString = self.movie[@"poster_path"];
//    NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
    
    // NSURL *posterURL = [NSURL URLWithString:fullPosterURLString];
    NSURL *posterURL = self.movie.posterUrl;
    [self.posterView setImageWithURL:posterURL];
    
    
    // NSString *backdropURLString = self.movie[@"backdrop_path"];
//    NSString *backdropURLString = self.movie[@"backdrop_path"];
//    NSString *fullBackdropURLString = [baseURLString stringByAppendingString:backdropURLString];
//
    NSURL *backdropURL = self.movie.backdropUrl;
    [self.backdropView setImageWithURL:backdropURL];
    
//    NSURL *backdropURL = [NSURL URLWithString:fullBackdropURLString];
//    [self.backdropView setImageWithURL:backdropURL];
    
//    self.titleLabel.text = self.movie[@"title"];
//    self.synopsisLabel.text = self.movie[@"overview"];
//    self.dateLabel.text = self.movie[@"release_date"];
    self.titleLabel.text = self.movie.title;
    self.synopsisLabel.text = self.movie.synopsis;
    // self.dateLabel.text = self.movie[@"release_date"];
    self.dateLabel.text = self.movie.date;
    
    
    self.titleLabel.adjustsFontSizeToFitWidth = true;
    self.titleLabel.minimumScaleFactor = 0.2;
    
    [self.titleLabel sizeToFit];
    [self.synopsisLabel sizeToFit];
    [self.dateLabel sizeToFit];
    
    [self.posterView.layer setBorderColor: [[UIColor whiteColor] CGColor]];
    [self.posterView.layer setBorderWidth: 2.0];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
