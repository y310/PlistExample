//
//  PEViewController.m
//  PlistExample
//
//  Created by mito on 2014/02/27.
//  Copyright (c) 2014年 mito. All rights reserved.
//

#import "PEViewController.h"

@interface PEViewController ()

@end

@implementation PEViewController

- (NSUserDefaults *)userDefaults
{
    return [NSUserDefaults standardUserDefaults];
}

- (NSArray *)objects
{
    return [[self.userDefaults dictionaryRepresentation] allKeys];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSString *key = self.objects[indexPath.row];
    cell.textLabel.text = key;
    cell.detailTextLabel.text = [self.userDefaults stringForKey:key];
    return cell;
}

@end
