//
//  TabbarTestFactory.m
//  Tabbar
//
//  Created by surfin-John on 2023/3/29.
//

#import "TabbarTestFactory.h"
#import "MFTabbar.h"
#import "MFScreenTool.h"
#import "MFTabbarItemModel.h"
#import "MFTabbarItem.h"
#import "MFTabbarDataManager.h"
#import "MFTabBarViewController.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "TestNaviController.h"

@implementation TabbarTestFactory

@end

@implementation TabbarTestFactory (MFTabFactoryInterface)

+ (UIView<MFTabbarInterface> *)productTabbar{
    return [MFTabbar new];
}

+ (UITabBarController<MFTabbarControllerInterface> *)productTabbarController{
    
    MFTabBarViewController *tabbarController = [MFTabBarViewController new];
    UIView <MFTabbarInterface> *tabbar = [self productTabbar];
    
    MFTabbarDataManager *dataManager = [MFTabbarDataManager new];
    
    NSArray *titles = @[@"home", @"me"];
    NSArray *images = @[@"home", @"me"];
    NSArray *selectedImages = @[@"home_select", @"me_select"];
    NSArray *colors = @[[UIColor grayColor], [UIColor grayColor]];
    NSArray *selectedColors = @[[UIColor blackColor], [UIColor blackColor]];
    
    NSMutableArray <id<MFTabbarItemDataInterface>> *dataList = @[].mutableCopy;
    NSMutableArray <UIView<MFTabbarItemInterface> *> *itemList = @[].mutableCopy;
    NSMutableArray <UINavigationController *> *naviList = @[].mutableCopy;
    
    for (int i=0; i<titles.count; i++) {
        MFTabbarItemModel *model = [[MFTabbarItemModel alloc] init];
        model.title = titles[i];
        model.selectedTitle = titles[i];
        model.imageName = images[i];
        model.selectedImageName = selectedImages[i];
        model.color = colors[i];
        model.selectedColor = selectedColors[i];
        [dataList addObject:model];
        
        CGFloat height = MFT_TabBarHeight;
        MFTabbarItem *item = [[MFTabbarItem alloc] initWithFrame:CGRectMake(0, 0, MFTAB_SCREENW/titles.count, height)];
        [itemList addObject:item];
    }
    
    UINavigationController *homeNavi = [[TestNaviController alloc] initWithRootViewController:[ViewController new]];
    UINavigationController *meNavi = [[TestNaviController alloc] initWithRootViewController:[SecondViewController new]];
    [naviList addObject:homeNavi];
    [naviList addObject:meNavi];
    
    [dataManager dataManagerSetDatas:dataList];
    [dataManager dataManagerSetItems:itemList];
    [dataManager dataManagerSetNavis:naviList];
    
    [tabbarController tabControllerBindTabbar:tabbar];
    [tabbarController tabControllerBindDataManager:dataManager];
    
    return tabbarController;
}

@end
