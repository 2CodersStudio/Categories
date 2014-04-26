//
//  UIView+frame.m
//  Categories
//
//  Created by David Santana Molina on 26/04/14.
//  Copyright (c) 2014 2Coders Studio. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)

#pragma mark -
#pragma mark Basic getter

- (CGFloat)x{ return self.frame.origin.x; }

- (CGFloat)y{ return self.frame.origin.y; }

- (CGFloat)width{ return self.frame.size.width;}

- (CGFloat)height{ return self.frame.size.height;}

- (CGPoint)origin{ return self.frame.origin;}

- (CGSize)size{ return self.frame.size;}

- (NSString*)description{
    
    id superview = [self superview];
    NSArray * subViews  = [self subviews];
    
    NSMutableString * descriptionStr = [NSMutableString string];
    
    //Frame info
    [descriptionStr appendFormat:@"Frame info:(%.2f,%.2f,%.2f,%.2f)\n",self.x,self.y,self.width,self.height ];
    [descriptionStr appendFormat:@"SuperView:%@",NSStringFromClass([superview class])];
    [descriptionStr appendFormat:@"SubViews (%li):",(unsigned long)subViews.count];
    for (UIView * subview in subViews) {
        [descriptionStr appendFormat:@"%@ : (%.2f,%.2f,%.2f,%.2f)",NSStringFromClass([superview class]),subview.x,subview.y,subview.width,subview.height];
    }
    
    
    return descriptionStr;
}
#pragma mark -
#pragma mark Custom setter
- (void)setWidth:(CGFloat)width{
    
    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height)];

}
- (void)setHeight:(CGFloat)height{

    [self setFrame:CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height)];

    
}
- (void)setX:(CGFloat)x{

    [self setFrame:CGRectMake(x, self.frame.origin.y, self.frame.size.width, self.frame.size.height)];


}
- (void)setY:(CGFloat)y{

    [self setFrame:CGRectMake(self.frame.origin.x, y, self.frame.size.width, self.frame.size.height)];

}

#pragma mark -
#pragma mark Basic setter with custom time animation

- (void)setWidth:(CGFloat)width duration:(NSTimeInterval)duration{

    [self setWidth:width duration:duration completion:nil];
}
- (void)setHeight:(CGFloat)height duration:(NSTimeInterval)duration{

    [self setHeight:height duration:duration completion:nil];
}
- (void)setX:(CGFloat)x duration:(NSTimeInterval)duration{

    [self setX:x duration:duration completion:nil];
}
- (void)setY:(CGFloat)y duration:(NSTimeInterval)duration{

    [self setY:y duration:duration completion:nil];
}

#pragma mark -
#pragma mark Basic seter with time and completion

- (void)setWidth:(CGFloat)width duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion{
    
    [self setWidth:width duration:duration type:UIViewAnimationOptionCurveLinear acompletion:completion];

}
- (void)setHeight:(CGFloat)height duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion{

    [self setHeight:height duration:duration type:UIViewAnimationOptionCurveLinear acompletion:completion];
    
}
- (void)setX:(CGFloat)x duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion{

    [self setX:x duration:duration type:UIViewAnimationOptionCurveLinear acompletion:completion];
}
- (void)setY:(CGFloat)y duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion{

    [self setY:y duration:duration type:UIViewAnimationOptionCurveLinear acompletion:completion];
}

#pragma mark -
#pragma mark Custom setter with time option completion animation

- (void)setWidth:(CGFloat)width duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion{

    [UIView animateWithDuration:duration delay:0 options:option animations:^{
        [self setWidth:width];
    } completion:completion];

}
- (void)setHeight:(CGFloat)height duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion{
    
    [UIView animateWithDuration:duration delay:0 options:option animations:^{
        [self setHeight:height];
    } completion:completion];

}
- (void)setX:(CGFloat)x duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion{

    [UIView animateWithDuration:duration delay:0 options:option animations:^{
        [self setX:x];
    } completion:completion];
    
}
- (void)setY:(CGFloat)y duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion{

    [UIView animateWithDuration:duration delay:0 options:option animations:^{
        [self setY:y];
    } completion:completion];
}
@end
