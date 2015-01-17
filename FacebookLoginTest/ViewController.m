//
//  ViewController.m
//  FacebookLoginTest
//
//  Created by Chawatvish Worrapoj on 1/17/2558 BE.
//  Copyright (c) 2558 Chawatvish Worrapoj. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _loginView.readPermissions = @[@"public_profile", @"email", @"user_friends"];
    _loginView.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loginViewFetchedUserInfo:(FBLoginView *)loginView user:(id<FBGraphUser>)user {
    _ProfilePicture.profileID = user.objectID;
    _Name.text = user.name;
}

-(void)loginViewShowingLoggedInUser:(FBLoginView *)loginView {
    _Status.text = @"You're logged in as";
}

-(void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView {
    _ProfilePicture.profileID = nil;
    _Name.text = @"";
    _Status.text = @"You're not logged in!";
}

@end
