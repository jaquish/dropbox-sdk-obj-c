///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGSharedFolderAccessError.h"
#import "DBSHARINGUnshareFolderError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGUnshareFolderError

@synthesize accessError = _accessError;

#pragma mark - Constructors

- (instancetype)initWithAccessError:(DBSHARINGSharedFolderAccessError *)accessError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGUnshareFolderErrorAccessError;
    _accessError = accessError;
  }
  return self;
}

- (instancetype)initWithTeamFolder {
  self = [super init];
  if (self) {
    _tag = DBSHARINGUnshareFolderErrorTeamFolder;
  }
  return self;
}

- (instancetype)initWithNoPermission {
  self = [super init];
  if (self) {
    _tag = DBSHARINGUnshareFolderErrorNoPermission;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGUnshareFolderErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBSHARINGSharedFolderAccessError *)accessError {
  if (![self isAccessError]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBSHARINGUnshareFolderErrorAccessError, but was %@.", [self tagName]];
  }
  return _accessError;
}

#pragma mark - Tag state methods

- (BOOL)isAccessError {
  return _tag == DBSHARINGUnshareFolderErrorAccessError;
}

- (BOOL)isTeamFolder {
  return _tag == DBSHARINGUnshareFolderErrorTeamFolder;
}

- (BOOL)isNoPermission {
  return _tag == DBSHARINGUnshareFolderErrorNoPermission;
}

- (BOOL)isOther {
  return _tag == DBSHARINGUnshareFolderErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGUnshareFolderErrorAccessError:
    return @"DBSHARINGUnshareFolderErrorAccessError";
  case DBSHARINGUnshareFolderErrorTeamFolder:
    return @"DBSHARINGUnshareFolderErrorTeamFolder";
  case DBSHARINGUnshareFolderErrorNoPermission:
    return @"DBSHARINGUnshareFolderErrorNoPermission";
  case DBSHARINGUnshareFolderErrorOther:
    return @"DBSHARINGUnshareFolderErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGUnshareFolderErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGUnshareFolderErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGUnshareFolderErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGUnshareFolderErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGUnshareFolderError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isAccessError]) {
    jsonDict[@"access_error"] =
        [[DBSHARINGSharedFolderAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
    jsonDict[@".tag"] = @"access_error";
  } else if ([valueObj isTeamFolder]) {
    jsonDict[@".tag"] = @"team_folder";
  } else if ([valueObj isNoPermission]) {
    jsonDict[@".tag"] = @"no_permission";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
  }

  return jsonDict;
}

+ (DBSHARINGUnshareFolderError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"access_error"]) {
    DBSHARINGSharedFolderAccessError *accessError =
        [DBSHARINGSharedFolderAccessErrorSerializer deserialize:valueDict[@"access_error"]];
    return [[DBSHARINGUnshareFolderError alloc] initWithAccessError:accessError];
  } else if ([tag isEqualToString:@"team_folder"]) {
    return [[DBSHARINGUnshareFolderError alloc] initWithTeamFolder];
  } else if ([tag isEqualToString:@"no_permission"]) {
    return [[DBSHARINGUnshareFolderError alloc] initWithNoPermission];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGUnshareFolderError alloc] initWithOther];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
