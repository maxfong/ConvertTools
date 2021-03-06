//
//  RequestController_Tests.m
//  ConvertTools
//
//  Created by maxfong on 14-8-29.
//
//

#import <XCTest/XCTest.h>
#import "MAXProtocolEngine.h"
#import "MAXEntityModelOperation.h"
#import "MAXJSONDictionary.h"
#import "MAXRequestController.h"

@interface RequestController_Tests : XCTestCase

@property (nonatomic, retain) MAXRequestController *controller;

@end

@implementation RequestController_Tests

- (void)setUp
{
    [super setUp];
    self.controller = [[MAXRequestController alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (void)testRequest
{
    NSURL *url = [NSURL URLWithString:@""];
    NSString *jsonString = @"";
    
    [MAXProtocolEngine postRequestWithURL:url JSONString:jsonString completionHandler:^(NSString *responseString, NSError *error)
     {
         if (responseString)
         {
             NSLog(@"%@", responseString);
         }
         else
         {
             //        error
         }
    }];
}

- (void)testPostRequestWithURL
{
    [MAXProtocolEngine postRequestWithURL:nil JSONString:@"{}" completionHandler:nil];
}

- (void)testFileManager
{
    NSString *json = @"{\"cityName\":\"a\",\"cityId\":\"b\",\"sceneryList\":{\"test\":\"a\",\"sceneryList1\":{\"test1\":\"a\"}},\"hotelList\":[{\"test3\":\"123\"}]}";

    NSError *error = nil;
    NSDictionary *dic = [MAXJSONDictionary dictionaryWithJSONString:json error:&error];
    
    [MAXEntityModelOperation createEntityFileWithDictionary:dic
                                                      model:MAXHeadAndComplieEntity
                                                  directory:MAXUserDesktopDirectory
                                                    options:@{MAXModelFileServerNameKey : @"GetList",
                                                              MAXModelFileInterfaceKey : @"",
                                                              MAXModelFileSuperClassKey : @"MAXTDemo",
                                                              MAXModelFilePrefixKey : @"Response",
                                                              MAXModelFileInitKey : @""}
                                                      error:nil];
}

- (void)testCreateRequestFile
{
    [self.controller didPressedSubmitRequest:nil];
}

@end
