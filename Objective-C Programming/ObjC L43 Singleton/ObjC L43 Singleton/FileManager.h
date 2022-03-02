//
//  FileManager.h
//  ObjC L43 Singleton
//
//  Created by Michele Galvagno on 02/03/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FileManager : NSObject

+ (void)initialize;
+ (FileManager *)defaultManager;

@end

NS_ASSUME_NONNULL_END
