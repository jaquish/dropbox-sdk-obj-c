///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGListFileMembersContinueError.h"
#import "DBSHARINGSharingFileAccessError.h"
#import "DBSHARINGSharingUserError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGListFileMembersContinueError

@synthesize userError = _userError;
@synthesize accessError = _accessError;

#pragma mark - Constructors

- (instancetype)initWithUserError:(DBSHARINGSharingUserError *)userError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGListFileMembersContinueErrorUserError;
    _userError = userError;
  }
  return self;
}

- (instancetype)initWithAccessError:(DBSHARINGSharingFileAccessError *)accessError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGListFileMembersContinueErrorAccessError;
    _accessError = accessError;
  }
  return self;
}

- (instancetype)initWithInvalidCursor {
  self = [super init];
  if (self) {
    _tag = DBSHARINGListFileMembersContinueErrorInvalidCursor;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGListFileMembersContinueErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBSHARINGSharingUserError *)userError {
  if (![self isUserError]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBSHARINGListFileMembersContinueErrorUserError, but was %@.", [self tagName]];
  }
  return _userError;
}

- (DBSHARINGSharingFileAccessError *)accessError {
  if (![self isAccessError]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBSHARINGListFileMembersContinueErrorAccessError, but was %@.", [self tagName]];
  }
  return _accessError;
}

#pragma mark - Tag state methods

- (BOOL)isUserError {
  return _tag == DBSHARINGListFileMembersContinueErrorUserError;
}

- (BOOL)isAccessError {
  return _tag == DBSHARINGListFileMembersContinueErrorAccessError;
}

- (BOOL)isInvalidCursor {
  return _tag == DBSHARINGListFileMembersContinueErrorInvalidCursor;
}

- (BOOL)isOther {
  return _tag == DBSHARINGListFileMembersContinueErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGListFileMembersContinueErrorUserError:
    return @"DBSHARINGListFileMembersContinueErrorUserError";
  case DBSHARINGListFileMembersContinueErrorAccessError:
    return @"DBSHARINGListFileMembersContinueErrorAccessError";
  case DBSHARINGListFileMembersContinueErrorInvalidCursor:
    return @"DBSHARINGListFileMembersContinueErrorInvalidCursor";
  case DBSHARINGListFileMembersContinueErrorOther:
    return @"DBSHARINGListFileMembersContinueErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGListFileMembersContinueErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGListFileMembersContinueErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGListFileMembersContinueErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGListFileMembersContinueErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGListFileMembersContinueError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isUserError]) {
    jsonDict[@"user_error"] = [[DBSHARINGSharingUserErrorSerializer serialize:valueObj.userError] mutableCopy];
    jsonDict[@".tag"] = @"user_error";
  } else if ([valueObj isAccessError]) {
    jsonDict[@"access_error"] =
        [[DBSHARINGSharingFileAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
    jsonDict[@".tag"] = @"access_error";
  } else if ([valueObj isInvalidCursor]) {
    jsonDict[@".tag"] = @"invalid_cursor";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
  }

  return jsonDict;
}

+ (DBSHARINGListFileMembersContinueError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"user_error"]) {
    DBSHARINGSharingUserError *userError = [DBSHARINGSharingUserErrorSerializer deserialize:valueDict[@"user_error"]];
    return [[DBSHARINGListFileMembersContinueError alloc] initWithUserError:userError];
  } else if ([tag isEqualToString:@"access_error"]) {
    DBSHARINGSharingFileAccessError *accessError =
        [DBSHARINGSharingFileAccessErrorSerializer deserialize:valueDict[@"access_error"]];
    return [[DBSHARINGListFileMembersContinueError alloc] initWithAccessError:accessError];
  } else if ([tag isEqualToString:@"invalid_cursor"]) {
    return [[DBSHARINGListFileMembersContinueError alloc] initWithInvalidCursor];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGListFileMembersContinueError alloc] initWithOther];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
