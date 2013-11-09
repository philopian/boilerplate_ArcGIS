//
//  ViewController.m
//  ArcGIS_Learning
//
//  Created by philopian on 9/25/13.
//  Copyright (c) 2013 philopian. All rights reserved.
//

#import "ViewController.h"


#define kTiledMapServiceURL @"http://server.arcgisonline.com/ArcGIS/rest/services/ESRI_StreetMap_World_2D/MapServer"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet AGSMapView *mapView;

@end



@implementation ViewController 
- (void)viewDidLoad
{
    [super viewDidLoad];

    
    AGSTiledMapServiceLayer *tiledLayer = [[AGSTiledMapServiceLayer alloc] initWithURL:[NSURL URLWithString:kTiledMapServiceURL]];
    
    
    [self.mapView addMapLayer:tiledLayer];
    
    //Set the map view's layerDelegate to self so that our
    //view controller is informed when map is loaded
    self.mapView.layerDelegate = self;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
