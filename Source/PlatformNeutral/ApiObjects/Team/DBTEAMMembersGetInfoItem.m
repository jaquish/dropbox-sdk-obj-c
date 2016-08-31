///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMMembersGetInfoItem.h"
#import "DBTEAMTeamMemberInfo.h"

#pragma mark - API Object

@implementation DBTEAMMembersGetInfoItem

@synthesize idNotFound = _idNotFound;
@synthesize memberInfo = _memberInfo;

#pragma mark - Constructors

- (instancetype)initWithIdNotFound:(NSString *)idNotFound {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersGetInfoItemIdNotFound;
    _idNotFound = idNotFound;
  }
  return self;
}

- (instancetype)initWithMemberInfo:(DBTEAMTeamMemberInfo *)memberInfo {
  self = [super init];
  if (self) {
    _tag = DBTEAMMembersGetInfoItemMemberInfo;
    _memberInfo = memberInfo;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSString *)idNotFound {
  if (![self isIdNotFound]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBTEAMMembersGetInfoItemIdNotFound, but was %@.", [self tagName]];
  }
  return _idNotFound;
}

- (DBTEAMTeamMemberInfo *)memberInfo {
  if (![self isMemberInfo]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBTEAMMembersGetInfoItemMemberInfo, but was %@.", [self tagName]];
  }
  return _memberInfo;
}

#pragma mark - Tag state methods

- (BOOL)isIdNotFound {
  return _tag == DBTEAMMembersGetInfoItemIdNotFound;
}

- (BOOL)isMemberInfo {
  return _tag == DBTEAMMembersGetInfoItemMemberInfo;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBTEAMMembersGetInfoItemIdNotFound:
    return @"DBTEAMMembersGetInfoItemIdNotFound";
  case DBTEAMMembersGetInfoItemMemberInfo:
    return @"DBTEAMMembersGetInfoItemMemberInfo";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMMembersGetInfoItemSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMMembersGetInfoItemSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMMembersGetInfoItemSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMMembersGetInfoItemSerializer

+ (NSDictionary *)serialize:(DBTEAMMembersGetInfoItem *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isIdNotFound]) {
    jsonDict[@"id_not_found"] = valueObj.idNotFound;
    jsonDict[@".tag"] = @"id_not_found";
  } else if ([valueObj isMemberInfo]) {
    jsonDict[@"member_info"] = [[DBTEAMTeamMemberInfoSerializer serialize:valueObj.memberInfo] mutableCopy];
    jsonDict[@".tag"] = @"member_info";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
  }

  return jsonDict;
}

+ (DBTEAMMembersGetInfoItem *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"id_not_found"]) {
    NSString *idNotFound = valueDict[@"id_not_found"];
    return [[DBTEAMMembersGetInfoItem alloc] initWithIdNotFound:idNotFound];
  } else if ([tag isEqualToString:@"member_info"]) {
    DBTEAMTeamMemberInfo *memberInfo = [DBTEAMTeamMemberInfoSerializer deserialize:valueDict];
    return [[DBTEAMMembersGetInfoItem alloc] initWithMemberInfo:memberInfo];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
