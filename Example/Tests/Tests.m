//
//  HashidsTests.m
//  HashidsTests
//
//  Created by Jopes Gallardo on 09/01/2014.
//  Copyright (c) 2014 Jopes Gallardo. All rights reserved.
//

#import <Hashids/Hashids.h>

SpecBegin(InitialSpecs)


describe(@"basic specs", ^{
    
    Hashids *hashids = [Hashids new];
    it(@"can initialize", ^{
        expect(hashids).notTo.equal(nil);
    });
    
    it(@"has encrypt method", ^{
        expect([hashids respondsToSelector:@selector(encrypt:)]).to.equal(YES);
    });
    
    it(@"has decrypt method", ^{
        expect([hashids respondsToSelector:@selector(decrypt:)]).to.equal(YES);
    });
    
    it(@"can encrypt using a number", ^{
        expect([hashids encrypt:@123, nil]).to.equal(@"AjL");
    });
    
    it(@"can encrypt using multiple numbers", ^{
        expect([hashids encrypt:@123, @456, @789, nil]).to.equal(@"qa9t96h7G");
    });
    
    it(@"can decrypt a number using a hashed data", ^{
        expect([hashids decrypt:@"qa9t96h7G"]).to.equal(@[ @123, @456, @789 ]);
    });
});

describe(@"custom hashes", ^{
    it(@"can initialize with salt", ^{
        expect([Hashids hashidWithSalt:@"this is my salt 1"]).notTo.equal(nil);
    });
    
    it(@"can encrypt with salt", ^{
        Hashids *hasher = [Hashids hashidWithSalt:@"this is my salt 1"];
        expect([hasher encrypt:@123, nil]).to.equal(@"rnR");
    });
    
    it(@"can encrypt with a different salt", ^{
        Hashids *hasher = [Hashids hashidWithSalt:@"this is my salt 2"];
        expect([hasher encrypt:@123, nil]).to.equal(@"XBn");
    });
    
    it(@"can control hash length", ^{
        Hashids *hasher = [Hashids hashidWithSalt:@"this is my salt"
                                     andMinLength:16];
        expect([hasher encrypt:@1, nil]).to.equal(@"AA6Fb9iLXiAaBFB5");
    });
    
    it(@"can use custom alphabet", ^{
        Hashids *hasher = [Hashids hashidWithSalt:@"this is my salt"
                                        minLength:16
                                         andAlpha:@"abcdefghijklmnopqrstuvwxyz"];
        expect([hasher encrypt:@123456789, nil]).to.equal(@"gdomzdrnoaorbnfp");
    });
    
});

SpecEnd
