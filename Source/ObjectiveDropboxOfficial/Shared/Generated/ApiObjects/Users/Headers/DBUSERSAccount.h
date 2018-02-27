///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBUSERSAccount;
@class DBUSERSName;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - API Object

///
/// The `Account` struct.
///
/// The amount of detail revealed about an account depends on the user being
/// queried and the user making the query.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBUSERSAccount : NSObject <DBSerializable, NSCopying>

#pragma mark - Instance fields

/// The user's unique Dropbox ID.
@property (nonatomic, readonly, copy) NSString *accountId;

/// Details of a user's name.
@property (nonatomic, readonly) DBUSERSName *name;

/// The user's e-mail address. Do not rely on this without checking the
/// emailVerified field. Even then, it's possible that the user has since lost
/// access to their e-mail.
@property (nonatomic, readonly, copy) NSString *email;

/// Whether the user has verified their e-mail address.
@property (nonatomic, readonly) NSNumber *emailVerified;

/// URL for the photo representing the user, if one is set.
@property (nonatomic, readonly, copy, nullable) NSString *profilePhotoUrl;

/// Whether the user has been disabled.
@property (nonatomic, readonly) NSNumber *disabled;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param accountId The user's unique Dropbox ID.
/// @param name Details of a user's name.
/// @param email The user's e-mail address. Do not rely on this without checking
/// the emailVerified field. Even then, it's possible that the user has since
/// lost access to their e-mail.
/// @param emailVerified Whether the user has verified their e-mail address.
/// @param disabled Whether the user has been disabled.
/// @param profilePhotoUrl URL for the photo representing the user, if one is
/// set.
///
/// @return An initialized instance.
///
- (instancetype)initWithAccountId:(NSString *)accountId
                             name:(DBUSERSName *)name
                            email:(NSString *)email
                    emailVerified:(NSNumber *)emailVerified
                         disabled:(NSNumber *)disabled
                  profilePhotoUrl:(nullable NSString *)profilePhotoUrl;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param accountId The user's unique Dropbox ID.
/// @param name Details of a user's name.
/// @param email The user's e-mail address. Do not rely on this without checking
/// the emailVerified field. Even then, it's possible that the user has since
/// lost access to their e-mail.
/// @param emailVerified Whether the user has verified their e-mail address.
/// @param disabled Whether the user has been disabled.
///
/// @return An initialized instance.
///
- (instancetype)initWithAccountId:(NSString *)accountId
                             name:(DBUSERSName *)name
                            email:(NSString *)email
                    emailVerified:(NSNumber *)emailVerified
                         disabled:(NSNumber *)disabled;

- (instancetype)init NS_UNAVAILABLE;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `Account` struct.
///
@interface DBUSERSAccountSerializer : NSObject

///
/// Serializes `DBUSERSAccount` instances.
///
/// @param instance An instance of the `DBUSERSAccount` API object.
///
/// @return A json-compatible dictionary representation of the `DBUSERSAccount`
/// API object.
///
+ (nullable NSDictionary *)serialize:(DBUSERSAccount *)instance;

///
/// Deserializes `DBUSERSAccount` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBUSERSAccount` API object.
///
/// @return An instantiation of the `DBUSERSAccount` object.
///
+ (DBUSERSAccount *)deserialize:(NSDictionary *)dict;

@end

NS_ASSUME_NONNULL_END