//
//  UIView+frame.h
//  Categories
//
//  Created by David Santana Molina on 26/04/14.
//  Copyright (c) 2014 2Coders Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (frame)
/* Basic getter */

- (CGFloat)x;
- (CGFloat)y;
- (CGFloat)width;
- (CGFloat)height;
- (CGPoint)origin;
- (CGSize)size;

- (NSString*)description;

/* Basic setter */

- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;
- (void)setX:(CGFloat)x;
- (void)setY:(CGFloat)y;

/* Increase frame */
- (CGFloat)addX:(CGFloat)delta;
- (CGFloat)addY:(CGFloat)delta;
- (CGFloat)addWidth:(CGFloat)delta;
- (CGFloat)addHeight:(CGFloat)delta;

/* Basic setter with animation
   0.2 animation time*/

- (void)setWidth:(CGFloat)width animate:(BOOL)animate;
- (void)setHeight:(CGFloat)height animate:(BOOL)animate;
- (void)setX:(CGFloat)x animate:(BOOL)animate;
- (void)setY:(CGFloat)y animate:(BOOL)animate;

/* Basic setter with animation
   custom animation time*/

- (void)setWidth:(CGFloat)width duration:(NSTimeInterval)duration;
- (void)setHeight:(CGFloat)height duration:(NSTimeInterval)duration;
- (void)setX:(CGFloat)x duration:(NSTimeInterval)duration;
- (void)setY:(CGFloat)y duration:(NSTimeInterval)duration;

/* Basic setter with
   custom animation time
   custom completion block*/

- (void)setWidth:(CGFloat)width duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion;
- (void)setHeight:(CGFloat)height duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion;
- (void)setX:(CGFloat)x duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion;
- (void)setY:(CGFloat)y duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion;

/* Basec setter with
   custom animation time
   custom animation type
   custom animation completion block
   custom animation time */

- (void)setWidth:(CGFloat)width duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion;
- (void)setHeight:(CGFloat)height duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion;
- (void)setX:(CGFloat)x duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion;
- (void)setY:(CGFloat)y duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion;

@end
