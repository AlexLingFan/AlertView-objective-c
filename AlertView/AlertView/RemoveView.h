//
//  RemoveView.h
//  AlertView
//
//  Created by Alex.Lingjiahua on 2022/5/6.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    AlertCClBtnClick = 0,
    AlertSSSBtnClick
} AlertBttnClickIndex;

@class RemoveView;
@protocol ADSelegate <NSObject>

- (void)alertViewDidClickButtonWithIndex:(NSInteger)index;
- (void) AAthod;

@end

@interface RemoveView : UIView

@property(nonatomic,assign)id<ADSelegate> delegate;

- (void)show;

@end

NS_ASSUME_NONNULL_END

