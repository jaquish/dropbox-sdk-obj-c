///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESAddPropertiesError.h"
#import "DBFILESInvalidPropertyGroupError.h"
#import "DBFILESLookupError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESAddPropertiesError

@synthesize templateNotFound = _templateNotFound;
@synthesize path = _path;

#pragma mark - Constructors

- (instancetype)initWithTemplateNotFound:(NSString *)templateNotFound {
  self = [super init];
  if (self) {
    _tag = DBFILESAddPropertiesErrorTemplateNotFound;
    _templateNotFound = templateNotFound;
  }
  return self;
}

- (instancetype)initWithRestrictedContent {
  self = [super init];
  if (self) {
    _tag = DBFILESAddPropertiesErrorRestrictedContent;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBFILESAddPropertiesErrorOther;
  }
  return self;
}

- (instancetype)initWithPath:(DBFILESLookupError *)path {
  self = [super init];
  if (self) {
    _tag = DBFILESAddPropertiesErrorPath;
    _path = path;
  }
  return self;
}

- (instancetype)initWithPropertyFieldTooLarge {
  self = [super init];
  if (self) {
    _tag = DBFILESAddPropertiesErrorPropertyFieldTooLarge;
  }
  return self;
}

- (instancetype)initWithDoesNotFitTemplate {
  self = [super init];
  if (self) {
    _tag = DBFILESAddPropertiesErrorDoesNotFitTemplate;
  }
  return self;
}

- (instancetype)initWithPropertyGroupAlreadyExists {
  self = [super init];
  if (self) {
    _tag = DBFILESAddPropertiesErrorPropertyGroupAlreadyExists;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSString *)templateNotFound {
  if (![self isTemplateNotFound]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESAddPropertiesErrorTemplateNotFound, but was %@.", [self tagName]];
  }
  return _templateNotFound;
}

- (DBFILESLookupError *)path {
  if (![self isPath]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESAddPropertiesErrorPath, but was %@.", [self tagName]];
  }
  return _path;
}

#pragma mark - Tag state methods

- (BOOL)isTemplateNotFound {
  return _tag == DBFILESAddPropertiesErrorTemplateNotFound;
}

- (BOOL)isRestrictedContent {
  return _tag == DBFILESAddPropertiesErrorRestrictedContent;
}

- (BOOL)isOther {
  return _tag == DBFILESAddPropertiesErrorOther;
}

- (BOOL)isPath {
  return _tag == DBFILESAddPropertiesErrorPath;
}

- (BOOL)isPropertyFieldTooLarge {
  return _tag == DBFILESAddPropertiesErrorPropertyFieldTooLarge;
}

- (BOOL)isDoesNotFitTemplate {
  return _tag == DBFILESAddPropertiesErrorDoesNotFitTemplate;
}

- (BOOL)isPropertyGroupAlreadyExists {
  return _tag == DBFILESAddPropertiesErrorPropertyGroupAlreadyExists;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESAddPropertiesErrorTemplateNotFound:
    return @"DBFILESAddPropertiesErrorTemplateNotFound";
  case DBFILESAddPropertiesErrorRestrictedContent:
    return @"DBFILESAddPropertiesErrorRestrictedContent";
  case DBFILESAddPropertiesErrorOther:
    return @"DBFILESAddPropertiesErrorOther";
  case DBFILESAddPropertiesErrorPath:
    return @"DBFILESAddPropertiesErrorPath";
  case DBFILESAddPropertiesErrorPropertyFieldTooLarge:
    return @"DBFILESAddPropertiesErrorPropertyFieldTooLarge";
  case DBFILESAddPropertiesErrorDoesNotFitTemplate:
    return @"DBFILESAddPropertiesErrorDoesNotFitTemplate";
  case DBFILESAddPropertiesErrorPropertyGroupAlreadyExists:
    return @"DBFILESAddPropertiesErrorPropertyGroupAlreadyExists";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESAddPropertiesErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESAddPropertiesErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESAddPropertiesErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESAddPropertiesErrorSerializer

+ (NSDictionary *)serialize:(DBFILESAddPropertiesError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isTemplateNotFound]) {
    jsonDict[@"template_not_found"] = valueObj.templateNotFound;
    jsonDict[@".tag"] = @"template_not_found";
  } else if ([valueObj isRestrictedContent]) {
    jsonDict[@".tag"] = @"restricted_content";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else if ([valueObj isPath]) {
    jsonDict[@"path"] = [[DBFILESLookupErrorSerializer serialize:valueObj.path] mutableCopy];
    jsonDict[@".tag"] = @"path";
  } else if ([valueObj isPropertyFieldTooLarge]) {
    jsonDict[@".tag"] = @"property_field_too_large";
  } else if ([valueObj isDoesNotFitTemplate]) {
    jsonDict[@".tag"] = @"does_not_fit_template";
  } else if ([valueObj isPropertyGroupAlreadyExists]) {
    jsonDict[@".tag"] = @"property_group_already_exists";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
  }

  return jsonDict;
}

+ (DBFILESAddPropertiesError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"template_not_found"]) {
    NSString *templateNotFound = valueDict[@"template_not_found"];
    return [[DBFILESAddPropertiesError alloc] initWithTemplateNotFound:templateNotFound];
  } else if ([tag isEqualToString:@"restricted_content"]) {
    return [[DBFILESAddPropertiesError alloc] initWithRestrictedContent];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBFILESAddPropertiesError alloc] initWithOther];
  } else if ([tag isEqualToString:@"path"]) {
    DBFILESLookupError *path = [DBFILESLookupErrorSerializer deserialize:valueDict[@"path"]];
    return [[DBFILESAddPropertiesError alloc] initWithPath:path];
  } else if ([tag isEqualToString:@"property_field_too_large"]) {
    return [[DBFILESAddPropertiesError alloc] initWithPropertyFieldTooLarge];
  } else if ([tag isEqualToString:@"does_not_fit_template"]) {
    return [[DBFILESAddPropertiesError alloc] initWithDoesNotFitTemplate];
  } else if ([tag isEqualToString:@"property_group_already_exists"]) {
    return [[DBFILESAddPropertiesError alloc] initWithPropertyGroupAlreadyExists];
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end
