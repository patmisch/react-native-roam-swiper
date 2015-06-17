//
//  RoamManager.m
//  TestRoam
//
//  Created by Patrick Misch on 6/17/15.
//  Copyright (c) 2015 Facebook. All rights reserved.
//

#import "RCTBridgeModule.h"
#import "RCTBridgeModule.h"
#import <RUA/RUAEnumerationHelper.h>
#import <RUA/RUADeviceManager.h>
#import <RUA/RUADevice.h>
#import <RUA/RUA.h>
#import <RUA/RUADeviceStatusHandler.h>
#import <RUA/RUADeviceResponseHandler.h>

@interface RoamManager : NSObject <RCTBridgeModule, RUADeviceStatusHandler>
@end
@implementation RoamManager

id <RUADeviceManager> deviceManager;
id <RUATransactionManager> transManager;

;

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(initDevice) {
  NSLog(@"Initializing Device");
  deviceManager  = [RUA getDeviceManager:RUADeviceTypeG4x];
  BOOL init = [deviceManager initializeDevice:self];
}




#pragma mark - ReaderStatusHandler

- (void)onConnected {
  NSLog(@"connect swiper!");
  
  
  
}

- (void)onDisconnected {
  NSLog(@"took off swiper!");

  
}

- (void)onError:(NSString *)message {
  
}



@end