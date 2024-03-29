//
//  DesktopEntity.m
//  Lesson 53
//
//  Created by Lucas Derraugh on 8/2/13.
//  Copyright (c) 2013 Lucas Derraugh. All rights reserved.
//

#import "DesktopEntity.h"

@implementation DesktopEntity

- (id)initWithFileURL:(NSURL *)fileURL {
    self = [super init];
    if (self) {
        _fileURL = fileURL;
    }
    return self;
}

+ (DesktopEntity *)entityForURL:(NSURL *)url {
    NSString *typeIdentifier;
    if ([url getResourceValue:&typeIdentifier forKey:NSURLTypeIdentifierKey error:NULL]) {
        NSArray *imgTypes = [NSImage imageTypes];
        if ([imgTypes containsObject:typeIdentifier]) {
            return [[DesktopImageEntity alloc] initWithFileURL:url];
        } else if ([typeIdentifier isEqualToString:(NSString *)kUTTypeFolder]) {
            return [[DesktopFolderEntity alloc] initWithFileURL:url];
        }
    }
    return nil;
}

- (NSString *)name {
    NSString *name;
    if ([self.fileURL getResourceValue:&name forKey:NSURLLocalizedNameKey error:NULL]) {
        return name;
    }
    return nil;
}

// MARK: - NSPasteboardWriting delegate methods
- (NSPasteboardWritingOptions)writingOptionsForType:(NSPasteboardType)type pasteboard:(NSPasteboard *)pasteboard {
    return [self.fileURL writingOptionsForType:type pasteboard:pasteboard];
}
- (NSArray<NSPasteboardType> *)writableTypesForPasteboard:(NSPasteboard *)pasteboard {
    return [self.fileURL writableTypesForPasteboard:pasteboard];
}

- (nullable id)pasteboardPropertyListForType:(nonnull NSPasteboardType)type {
    return [self.fileURL pasteboardPropertyListForType:type];
}

// MARK: - NSPasteboardReading delegate methods
+ (nonnull NSArray<NSPasteboardType> *)readableTypesForPasteboard:(nonnull NSPasteboard *)pasteboard {
    return @[(id)kUTTypeFolder, (id)kUTTypeFileURL]; // typecasting from Core Foundation
}

+ (NSPasteboardReadingOptions)readingOptionsForType:(NSPasteboardType)type pasteboard:(NSPasteboard *)pasteboard {
    return NSPasteboardReadingAsString;
}

- (id)initWithPasteboardPropertyList:(id)propertyList ofType:(NSPasteboardType)type {
    NSURL *url = [[NSURL alloc] initWithPasteboardPropertyList:propertyList ofType:type];
    self = [DesktopEntity entityForURL:url];
    return self;
}

@end

@implementation DesktopImageEntity

- (NSImage *)image {
    if (!_image) {
        _image = [[NSImage alloc] initByReferencingURL:self.fileURL];
    }
    return _image;
}

@end


@implementation DesktopFolderEntity

@end



