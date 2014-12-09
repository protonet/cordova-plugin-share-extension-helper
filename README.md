# Share Extension Helper #
By: Protonet GmbH

Authors: Joschka Schulz

## Adding the Plugin ##

Use the Cordova CLI and type in the following command:

`cordova plugin add comming-soon`

## Description

This application makes it possible to load variables given from the share extension input. It's important to configure the CDVViewController the right way.

### ShareViewController.h

    @interface ShareViewController : CDVViewController
      @property NSURL *imageExtensionUrl;
    @end

### ShareViewController.m

    @implementation ShareViewController
    - (void)viewWillAppear:(BOOL)animated
    {
      NSArray *outputItems = self.extensionContext.inputItems;
      NSExtensionItem *outputItem = outputItems[0];
      NSItemProvider *item = [outputItem.userInfo
        objectForKey:NSExtensionItemAttachmentsKey][0];
      [item loadItemForTypeIdentifier:kUTTypeImage options:nil
        completionHandler:^(id item, NSError *error)
        {
          self.imageExtensionUrl = item;
        }];
    }
    @end

## Sample Code

The Plugin is only for iOS.

### Save in UserDefaults

    
