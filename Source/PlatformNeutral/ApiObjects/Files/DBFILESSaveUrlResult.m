///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBASYNCLaunchResultBase.h"
#import "DBFILESFileMetadata.h"
#import "DBFILESSaveUrlResult.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESSaveUrlResult

@synthesize asyncJobId = _asyncJobId;
@synthesize complete = _complete;

#pragma mark - Constructors

- (instancetype)initWithAsyncJobId:(NSString *)asyncJobId {
  self = [super init];
  if (self) {
    _tag = DBFILESSaveUrlResultAsyncJobId;
    _asyncJobId = asyncJobId;
  }
  return self;
}

- (instancetype)initWithComplete:(DBFILESFileMetadata *)complete {
  self = [super init];
  if (self) {
    _tag = DBFILESSaveUrlResultComplete;
    _complete = complete;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSString *)asyncJobId {
  if (![self isAsyncJobId]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESSaveUrlResultAsyncJobId, but was %@.", [self tagName]];
  }
  return _asyncJobId;
}

- (DBFILESFileMetadata *)complete {
  if (![self isComplete]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESSaveUrlResultComplete, but was %@.", [self tagName]];
  }
  return _complete;
}

#pragma mark - Tag state methods

- (BOOL)isAsyncJobId {
  return _tag == DBFILESSaveUrlResultAsyncJobId;
}

- (BOOL)isComplete {
  return _tag == DBFILESSaveUrlResultComplete;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESSaveUrlResultAsyncJobId:
    return @"DBFILESSaveUrlResultAsyncJobId";
  case DBFILESSaveUrlResultComplete:
    return @"DBFILESSaveUrlResultComplete";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESSaveUrlResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESSaveUrlResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESSaveUrlResultSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESSaveUrlResultSerializer

+ (NSDictionary *)serialize:(DBFILESSaveUrlResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isAsyncJobId]) {
    jsonDict[@"async_job_id"] = valueObj.asyncJobId;
    jsonDict[@".tag"] = @"async_job_id";
  } else if ([valueObj isComplete]) {
    jsonDict[@"complete"] = [[DBFILESFileMetadataSerializer serialize:valueObj.complete] mutableCopy];
    jsonDict[@".tag"] = @"complete";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
  }

  return jsonDict;
}

+ (DBFILESSaveUrlResult *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"async_job_id"]) {
    NSString *asyncJobId = valueDict[@"async_job_id"];
    return [[DBFILESSaveUrlResult alloc] initWithAsyncJobId:asyncJobId];
  } else if ([tag isEqualToString:@"complete"]) {
    DBFILESFileMetadata *complete = [DBFILESFileMetadataSerializer deserialize:valueDict];
    return [[DBFILESSaveUrlResult alloc] initWithComplete:complete];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
