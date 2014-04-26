Categories
==========

Make easier your coding

Available categories:




#### `UIView+frame`

Basic setter:

```objective-c
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;
- (void)setX:(CGFloat)x;
- (void)setY:(CGFloat)y;
```
 Basic setter with: 
    animation (time 0.2)

```objective-c
- (void)setWidth:(CGFloat)width animate:(BOOL)animate;
- (void)setHeight:(CGFloat)height animate:(BOOL)animate;
- (void)setX:(CGFloat)x animate:(BOOL)animate;
- (void)setY:(CGFloat)y animate:(BOOL)animate;
```
Basic setter with 
    custom animation time

```objective-c
- (void)setWidth:(CGFloat)width duration:(NSTimeInterval)duration;
- (void)setHeight:(CGFloat)height duration:(NSTimeInterval)duration;
- (void)setX:(CGFloat)x duration:(NSTimeInterval)duration;
- (void)setY:(CGFloat)y duration:(NSTimeInterval)duration;
```

Basic setter with:
    custom animation 
    custom time 
    custom completion block

```objective-c
- (void)setWidth:(CGFloat)width duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion;
- (void)setHeight:(CGFloat)height duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion;
- (void)setX:(CGFloat)x duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion;
- (void)setY:(CGFloat)y duration:(NSTimeInterval)duration completion:(void (^)(BOOL finished))completion;
```

Basec setter with:
   custom animation time
   custom animation type
   custom animation completion block
   custom animation time

```objective-c
- (void)setWidth:(CGFloat)width duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion;
- (void)setHeight:(CGFloat)height duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion;
- (void)setX:(CGFloat)x duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion;
- (void)setY:(CGFloat)y duration:(NSTimeInterval)duration type:(UIViewAnimationOptions)option acompletion:(void (^)(BOOL finished))completion;
```
