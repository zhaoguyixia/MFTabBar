//
//  TabbarTestFactory.h
//  Tabbar
//
//  Created by zhaoguyixia on 2023/3/29.
//

#import <Foundation/Foundation.h>
#import "MFTabFactoryInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface TabbarTestFactory : NSObject

@end

@interface TabbarTestFactory (MFTabFactoryInterface)<MFTabFactoryInterface>

@end

NS_ASSUME_NONNULL_END
