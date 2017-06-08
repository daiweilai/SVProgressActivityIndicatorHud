//
//  SVProgressHUD+DGActivityIndicatorView.h
//  SVProgressActivityIndicatorHud
//
//  Created by DavidDay on 2017/6/8.
//  Copyright © 2017年 DavidDay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SVProgressHUD.h>
#import <SVIndefiniteAnimatedView.h>

typedef NS_ENUM(NSUInteger, DDActivityIndicatorAnimationType) {
    DDActivityIndicatorAnimationTypeNineDots,
    DDActivityIndicatorAnimationTypeTriplePulse,
    DDActivityIndicatorAnimationTypeFiveDots,
    DDActivityIndicatorAnimationTypeRotatingSquares,
    DDActivityIndicatorAnimationTypeDoubleBounce,
    DDActivityIndicatorAnimationTypeTwoDots,
    DDActivityIndicatorAnimationTypeThreeDots,
    DDActivityIndicatorAnimationTypeBallPulse,
    DDActivityIndicatorAnimationTypeBallClipRotate,
    DDActivityIndicatorAnimationTypeBallClipRotatePulse,
    DDActivityIndicatorAnimationTypeBallClipRotateMultiple,
    DDActivityIndicatorAnimationTypeBallRotate,
    DDActivityIndicatorAnimationTypeBallZigZag,
    DDActivityIndicatorAnimationTypeBallZigZagDeflect,
    DDActivityIndicatorAnimationTypeBallTrianglePath,
    DDActivityIndicatorAnimationTypeBallScale,
    DDActivityIndicatorAnimationTypeLineScale,
    DDActivityIndicatorAnimationTypeLineScaleParty,
    DDActivityIndicatorAnimationTypeBallScaleMultiple,
    DDActivityIndicatorAnimationTypeBallPulseSync,
    DDActivityIndicatorAnimationTypeBallBeat,
    DDActivityIndicatorAnimationTypeLineScalePulseOut,
    DDActivityIndicatorAnimationTypeLineScalePulseOutRapid,
    DDActivityIndicatorAnimationTypeBallScaleRipple,
    DDActivityIndicatorAnimationTypeBallScaleRippleMultiple,
    DDActivityIndicatorAnimationTypeTriangleSkewSpin,
    DDActivityIndicatorAnimationTypeBallGridBeat,
    DDActivityIndicatorAnimationTypeBallGridPulse,
    DDActivityIndicatorAnimationTypeRotatingSandglass,
    DDActivityIndicatorAnimationTypeRotatingTrigons,
    DDActivityIndicatorAnimationTypeTripleRings,
    DDActivityIndicatorAnimationTypeCookieTerminator
};

@interface SVProgressHUD(DGActivityIndicatorView)
+(void)setActivityIndicatorType:(DDActivityIndicatorAnimationType)type tintColor:(UIColor*)tintColor;
+(void)unsetActivityIndicator;
@end
