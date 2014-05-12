//
//  SBViewController.m
//  sandbox
//
//  Created by Toshiyuki Tanaka on 2014/05/12.
//  Copyright (c) 2014年 Sandbox Name. All rights reserved.
//

#import "SBViewController.h"

@interface SBViewController ()

@end

@implementation SBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"hello world");
    
    // Array
//    NSArray *array = @[@"hoge", @"fuga"]; // インスタンス化
    NSArray *array = [NSArray arrayWithObjects:@"hoge", @"fuga", nil]; // インスタンス化
    NSString *hoge = array[0]; // 0番目のオブジェクトを取り出す( hoge = @"hoge" )
    NSString *fuga = array[1]; // 1番目のオブジェクトを取り出す( fuga = @"fuga" )
    //array[0] = hogehoge; // 代入は無理
    NSLog(@"array:%@", array.description);
    
    // MutableArray
    NSMutableArray *mutableArray = @[].mutableCopy; // mutable
    [mutableArray addObject:hoge]; //mutableArrayの末尾にhogeを追加 ( mutableArray = @[hoge] )
    [mutableArray addObject:fuga]; //                   fugaを追加 ( mutableArray = @[hoge, fuga] )
    NSLog(@"mutableArray:%@", mutableArray.description);
    [mutableArray removeObjectAtIndex:0]; // 先頭のオブジェクトを削除 ( mutableArray = @[fuga] )
    NSLog(@"mutableArray:%@", mutableArray.description);
//    [mutableArray addObject:nil]; // nilの代入は無理
    [mutableArray addObject:[NSNull null]]; // 無効な値を入れたい場合はnilの代わりにNSNullを使う
    NSLog(@"mutableArray:%@", mutableArray.description);
    
    
    // Dictionary
    NSDictionary *dict = @{ @"key" : @"value"}; // インスタンス化. valueは適当なオブジェクト
    id obj = dict[@"key"]; // 0番目のオブジェクトを取り出す( obj = value )
    NSLog(@"dict:%@", dict.description);
    NSLog(@"obj:%@", obj);
    //dict[@"key2"] = fuga; // 代入は無理
    
    // Mutable Dictonary
    NSMutableDictionary *mutableDict = @{}.mutableCopy; // mutable
    mutableDict[@"key"] = @"value"; // keyをキーとしてvalueという文字列を追加
    NSLog(@"mutableDict:%@", mutableDict.description);
    [mutableDict removeObjectForKey:@"key"]; // キー名 @"key" のオブジェクトを削除
    NSLog(@"mutableDict:%@", mutableDict.description);
//    mutableDict[@"key"] = nil; // nilを代入するとクラッシュします。
    mutableDict[@"key"] = [NSNull null]; // やはり代わりにNSNUllを使う。
    NSLog(@"mutableDict:%@", mutableDict.description);
    
    
    // String
    NSString *str = @"hoge fuga";
    NSLog(@"str:%@", str);
    NSMutableString *mutableStr = [NSMutableString string];
    NSLog(@"mutableStr:%@", mutableStr);
    [mutableStr appendString:@"hogehoge"]; // 文字列をappend
    NSLog(@"mutableStr:%@", mutableStr);
    
    NSString *string = [NSString stringWithFormat:@"%d + %d = %d",1 ,2, 3]; // フォーマット指定子も利用可能
    NSLog(@"%@", string); // "1 + 2 = 3"
    
    
    // Number
    NSNumber *number = @1;
    //NSNumber *number = [NSNumber numberWithInt:1]; めんどうなので上記の書き方が作られた
    NSArray *num_array = @[number, @2]; //直接intなどを代入できないが、NSNumberでラップしたら使える
    NSLog(@"%@", num_array.description);
    NSNumber *yes = @YES; // YES, NO などもキャスト可能
    NSNumber *no = @NO; // YES, NO などもキャスト可能
//    NSNumber *num = [NSNumber numberWithBool:YES]; // めんどうなので上記の書き方が作られた
    NSLog(@"yes:%@, no:%@", yes, no);
    
    int a = [number intValue]; // int型へ変換
    NSLog(@"%d", a);
    
    
    // 課題1-1-1
    NSArray *array1_1_1 = @[
                            @{
                                @"domain": @"mixi.jp",
                                @"entry": @[
                                        @"list_voice.pl",
                                        @"list_diary.pl",
                                        @"list_mymall_item.pl"]
                                },
                            @{
                                @"domain": @"mmall.jp",
                                @"entry": @[@{
                                                @"path": @"add_diary.pl",
                                                @"query": @[@{@"tag_id": @7}]}]
                                },
                            @{
                                @"domain": @"itunes.apple.com"
                                },
                            ];
   NSLog(@"%@", array1_1_1.description);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
