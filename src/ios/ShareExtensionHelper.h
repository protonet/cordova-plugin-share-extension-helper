#import <Cordova/CDVPlugin.h>

@interface ShareExtensionHelper : CDVPlugin

// This method loads a saved image in the CDVViewController class. In this case
// ShareViewController inherit the class CDVViewController.
//
// Please read the README.md for more details how this code is working.
- (void) loadShareImage:(CDVInvokedUrlCommand*)command;

- (void) finishExtension:(CDVInvokedUrlCommand*)command;
@end
