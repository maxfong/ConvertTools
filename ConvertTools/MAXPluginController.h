//
//  MAXPluginController.h
//  ConvertUnicode
//
//  Created by maxfong on 14-7-15.
//
//

#import <Cocoa/Cocoa.h>
#import "NSTextField+copypaste.h"

@interface MAXPluginController : NSWindowController
{
    IBOutlet NSTextView     *txtvJSONInput;
    IBOutlet NSTextView     *txtvJSONOutput;
    IBOutlet NSTextView     *txtvConsole;
}

- (IBAction)didPressedConvertChinese:sender;    //Unicode转换
- (IBAction)didPressedAlert:sender;             //关于
- (IBAction)didPressedCheckJSON:sender;         //验证
- (IBAction)didPressedFileCreate:sender;        //生成

@end
