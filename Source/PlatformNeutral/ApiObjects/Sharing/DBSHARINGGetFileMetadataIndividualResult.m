///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGGetFileMetadataIndividualResult.h"
#import "DBSHARINGSharedFileMetadata.h"
#import "DBSHARINGSharingFileAccessError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGGetFileMetadataIndividualResult

@synthesize metadata = _metadata;
@synthesize accessError = _accessError;

#pragma mark - Constructors

- (instancetype)initWithMetadata:(DBSHARINGSharedFileMetadata *)metadata {
  self = [super init];
  if (self) {
    _tag = DBSHARINGGetFileMetadataIndividualResultMetadata;
    _metadata = metadata;
  }
  return self;
}

- (instancetype)initWithAccessError:(DBSHARINGSharingFileAccessError *)accessError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGGetFileMetadataIndividualResultAccessError;
    _accessError = accessError;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGGetFileMetadataIndividualResultOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBSHARINGSharedFileMetadata *)metadata {
  if (![self isMetadata]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBSHARINGGetFileMetadataIndividualResultMetadata, but was %@.", [self tagName]];
  }
  return _metadata;
}

- (DBSHARINGSharingFileAccessError *)accessError {
  if (![self isAccessError]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBSHARINGGetFileMetadataIndividualResultAccessError, but was %@.",
                       [self tagName]];
  }
  return _accessError;
}

#pragma mark - Tag state methods

- (BOOL)isMetadata {
  return _tag == DBSHARINGGetFileMetadataIndividualResultMetadata;
}

- (BOOL)isAccessError {
  return _tag == DBSHARINGGetFileMetadataIndividualResultAccessError;
}

- (BOOL)isOther {
  return _tag == DBSHARINGGetFileMetadataIndividualResultOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGGetFileMetadataIndividualResultMetadata:
    return @"DBSHARINGGetFileMetadataIndividualResultMetadata";
  case DBSHARINGGetFileMetadataIndividualResultAccessError:
    return @"DBSHARINGGetFileMetadataIndividualResultAccessError";
  case DBSHARINGGetFileMetadataIndividualResultOther:
    return @"DBSHARINGGetFileMetadataIndividualResultOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGGetFileMetadataIndividualResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGGetFileMetadataIndividualResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGGetFileMetadataIndividualResultSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGGetFileMetadataIndividualResultSerializer

+ (NSDictionary *)serialize:(DBSHARINGGetFileMetadataIndividualResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isMetadata]) {
    jsonDict[@"metadata"] = [[DBSHARINGSharedFileMetadataSerializer serialize:valueObj.metadata] mutableCopy];
    jsonDict[@".tag"] = @"metadata";
  } else if ([valueObj isAccessError]) {
    jsonDict[@"access_error"] =
        [[DBSHARINGSharingFileAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
    jsonDict[@".tag"] = @"access_error";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
  }

  return jsonDict;
}

+ (DBSHARINGGetFileMetadataIndividualResult *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"metadata"]) {
    DBSHARINGSharedFileMetadata *metadata = [DBSHARINGSharedFileMetadataSerializer deserialize:valueDict];
    return [[DBSHARINGGetFileMetadataIndividualResult alloc] initWithMetadata:metadata];
  } else if ([tag isEqualToString:@"access_error"]) {
    DBSHARINGSharingFileAccessError *accessError =
        [DBSHARINGSharingFileAccessErrorSerializer deserialize:valueDict[@"access_error"]];
    return [[DBSHARINGGetFileMetadataIndividualResult alloc] initWithAccessError:accessError];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGGetFileMetadataIndividualResult alloc] initWithOther];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
