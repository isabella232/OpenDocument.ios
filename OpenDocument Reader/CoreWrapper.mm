//
//  CoreWrapper.m
//  OpenDocument Reader
//
//  Created by Thomas Taschauer on 09.02.19.
//  Copyright © 2019 Thomas Taschauer. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CoreWrapper.h"

#include "OpenDocumentFile.h"
#include "TextTranslator.h"

@implementation CoreWrapper
- (void)translate:(NSString *)inputPath into:(NSString *)outputPath {
    opendocument::OpenDocumentFile file([inputPath cStringUsingEncoding:NSUTF8StringEncoding]);

    opendocument::TextTranslator translator;
    translator.translate(file, [outputPath cStringUsingEncoding:NSUTF8StringEncoding]);
}
@end