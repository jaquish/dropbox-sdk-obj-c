///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGRemoveFolderMemberError.h"
#import "DBSHARINGSharedFolderAccessError.h"
#import "DBSHARINGSharedFolderMemberError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGRemoveFolderMemberError

@synthesize accessError = _accessError;
@synthesize memberError = _memberError;

#pragma mark - Constructors

- (instancetype)initWithAccessError:(DBSHARINGSharedFolderAccessError *)accessError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGRemoveFolderMemberErrorAccessError;
    _accessError = accessError;
  }
  return self;
}

- (instancetype)initWithMemberError:(DBSHARINGSharedFolderMemberError *)memberError {
  self = [super init];
  if (self) {
    _tag = DBSHARINGRemoveFolderMemberErrorMemberError;
    _memberError = memberError;
  }
  return self;
}

- (instancetype)initWithFolderOwner {
  self = [super init];
  if (self) {
    _tag = DBSHARINGRemoveFolderMemberErrorFolderOwner;
  }
  return self;
}

- (instancetype)initWithGroupAccess {
  self = [super init];
  if (self) {
    _tag = DBSHARINGRemoveFolderMemberErrorGroupAccess;
  }
  return self;
}

- (instancetype)initWithTeamFolder {
  self = [super init];
  if (self) {
    _tag = DBSHARINGRemoveFolderMemberErrorTeamFolder;
  }
  return self;
}

- (instancetype)initWithNoPermission {
  self = [super init];
  if (self) {
    _tag = DBSHARINGRemoveFolderMemberErrorNoPermission;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBSHARINGRemoveFolderMemberErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBSHARINGSharedFolderAccessError *)accessError {
  if (![self isAccessError]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBSHARINGRemoveFolderMemberErrorAccessError, but was %@.", [self tagName]];
  }
  return _accessError;
}

- (DBSHARINGSharedFolderMemberError *)memberError {
  if (![self isMemberError]) {
    [NSException
         raise:@"IllegalStateException"
        format:@"Invalid tag: required DBSHARINGRemoveFolderMemberErrorMemberError, but was %@.", [self tagName]];
  }
  return _memberError;
}

#pragma mark - Tag state methods

- (BOOL)isAccessError {
  return _tag == DBSHARINGRemoveFolderMemberErrorAccessError;
}

- (BOOL)isMemberError {
  return _tag == DBSHARINGRemoveFolderMemberErrorMemberError;
}

- (BOOL)isFolderOwner {
  return _tag == DBSHARINGRemoveFolderMemberErrorFolderOwner;
}

- (BOOL)isGroupAccess {
  return _tag == DBSHARINGRemoveFolderMemberErrorGroupAccess;
}

- (BOOL)isTeamFolder {
  return _tag == DBSHARINGRemoveFolderMemberErrorTeamFolder;
}

- (BOOL)isNoPermission {
  return _tag == DBSHARINGRemoveFolderMemberErrorNoPermission;
}

- (BOOL)isOther {
  return _tag == DBSHARINGRemoveFolderMemberErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBSHARINGRemoveFolderMemberErrorAccessError:
    return @"DBSHARINGRemoveFolderMemberErrorAccessError";
  case DBSHARINGRemoveFolderMemberErrorMemberError:
    return @"DBSHARINGRemoveFolderMemberErrorMemberError";
  case DBSHARINGRemoveFolderMemberErrorFolderOwner:
    return @"DBSHARINGRemoveFolderMemberErrorFolderOwner";
  case DBSHARINGRemoveFolderMemberErrorGroupAccess:
    return @"DBSHARINGRemoveFolderMemberErrorGroupAccess";
  case DBSHARINGRemoveFolderMemberErrorTeamFolder:
    return @"DBSHARINGRemoveFolderMemberErrorTeamFolder";
  case DBSHARINGRemoveFolderMemberErrorNoPermission:
    return @"DBSHARINGRemoveFolderMemberErrorNoPermission";
  case DBSHARINGRemoveFolderMemberErrorOther:
    return @"DBSHARINGRemoveFolderMemberErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGRemoveFolderMemberErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGRemoveFolderMemberErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGRemoveFolderMemberErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGRemoveFolderMemberErrorSerializer

+ (NSDictionary *)serialize:(DBSHARINGRemoveFolderMemberError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isAccessError]) {
    jsonDict[@"access_error"] =
        [[DBSHARINGSharedFolderAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
    jsonDict[@".tag"] = @"access_error";
  } else if ([valueObj isMemberError]) {
    jsonDict[@"member_error"] =
        [[DBSHARINGSharedFolderMemberErrorSerializer serialize:valueObj.memberError] mutableCopy];
    jsonDict[@".tag"] = @"member_error";
  } else if ([valueObj isFolderOwner]) {
    jsonDict[@".tag"] = @"folder_owner";
  } else if ([valueObj isGroupAccess]) {
    jsonDict[@".tag"] = @"group_access";
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

+ (DBSHARINGRemoveFolderMemberError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"access_error"]) {
    DBSHARINGSharedFolderAccessError *accessError =
        [DBSHARINGSharedFolderAccessErrorSerializer deserialize:valueDict[@"access_error"]];
    return [[DBSHARINGRemoveFolderMemberError alloc] initWithAccessError:accessError];
  } else if ([tag isEqualToString:@"member_error"]) {
    DBSHARINGSharedFolderMemberError *memberError =
        [DBSHARINGSharedFolderMemberErrorSerializer deserialize:valueDict[@"member_error"]];
    return [[DBSHARINGRemoveFolderMemberError alloc] initWithMemberError:memberError];
  } else if ([tag isEqualToString:@"folder_owner"]) {
    return [[DBSHARINGRemoveFolderMemberError alloc] initWithFolderOwner];
  } else if ([tag isEqualToString:@"group_access"]) {
    return [[DBSHARINGRemoveFolderMemberError alloc] initWithGroupAccess];
  } else if ([tag isEqualToString:@"team_folder"]) {
    return [[DBSHARINGRemoveFolderMemberError alloc] initWithTeamFolder];
  } else if ([tag isEqualToString:@"no_permission"]) {
    return [[DBSHARINGRemoveFolderMemberError alloc] initWithNoPermission];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBSHARINGRemoveFolderMemberError alloc] initWithOther];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
