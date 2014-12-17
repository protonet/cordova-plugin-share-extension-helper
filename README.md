# Share Extension Helper #
By: Protonet GmbH

Authors: Joschka Schulz

## Adding the Plugin ##

Use the Cordova CLI and type in the following command:

`cordova plugin add https://github.com/protonet/cordova-plugin-share-extension-helper.git`

## Description

This application makes it possible to load variables given from the share extension input. It's important to configure the CDVViewController the right way.

At the moment it's only possible to share one image. But please feel free to update that code for a more complex usecase.s

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

### Load image from ShareViewController

    window.ShareExtensionHelper.loadShareImage(success, fail);

### Exit the Share Extension without callback

Please take care that you don't have any observers registered like the splashscreen did.

    window.ShareExtensionHelper.finishExtension();
