#import "ShareExtensionHelper.h"
#import "ShareViewController.h"
#import <Cordova/CDV.h>
#import <Cordova/CDVPluginResult.h>

@implementation ShareExtensionHelper
- (void) loadShareImage:(CDVInvokedUrlCommand*)command
{
  // do the magic
  ShareViewController *shareView = self.viewController;
  NSURL *urlResult = shareView.imageExtensionUrl;

  // give the callback
  CDVPluginResult* result = nil;
  if(urlResult != nil)
  {
    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[urlResult absoluteString]];
  } else {
    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_IO_EXCEPTION];
  }
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void) finishExtension:(CDVInvokedUrlCommand*)command
{
  //Do the magic
  ShareViewController *shareView = self.viewController;
  [shareView.extensionContext completeRequestReturningItems:nil completionHandler:nil];
}

@end
