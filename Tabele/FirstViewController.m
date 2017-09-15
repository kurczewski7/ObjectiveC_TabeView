//
//  FirstViewController.m
//  Tabele
//
//  Created by Slawek Kurczewski on 15.09.2017.
//  Copyright © 2017 Slawomir Kurczewski. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    daneDlaTabeli=[[NSArray alloc]initWithObjects:@"Wiersz1",@"Wiersz2",@"Wiersz3",@"Wiersz4",@"Wiersz5",@"Wiersz6",@"Wiersz7",@"Wiersz8",@"Wiersz9",
                   @"Wiersz10", nil];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [daneDlaTabeli count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@"Uruchamiam metodę twoprzenia komórek");
    static NSString *identyfikatorKomorki=@"Komorka";
    UITableViewCell *komorka = [tableView dequeueReusableCellWithIdentifier:identyfikatorKomorki];
    
    if (komorka==nil)
    {
        komorka=[[UITableViewCell  alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identyfikatorKomorki];
        NSLog(@"Tworzę nowy obiekt jeśli nie posiadam wolnej komórki w kolejce");
    }
    komorka.textLabel.text= [daneDlaTabeli objectAtIndex: indexPath.row];
    return komorka;
}
-(void)dealloc
{
   // [daneDlaTabeli release];
   // [super dealloc];
}

@end
