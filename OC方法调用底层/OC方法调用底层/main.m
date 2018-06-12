//
//  main.m
//  OC方法调用底层
//
//  Created by sve on 2018/6/12.
//  Copyright © 2018年 sve. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import <objc/message.h>

int main(int argc, const char * argv[]) {
    
//    Person *p = [[Person alloc] init];
    
    Person *p = ((Person *(*)(id, SEL))(void *)objc_msgSend)((id)((Person *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("Person"), sel_registerName("alloc")), sel_registerName("init"));
    
    [p run];
    
}
