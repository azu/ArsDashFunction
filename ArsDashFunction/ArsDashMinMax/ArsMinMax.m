//
// Created by azu on 2014/03/20.
//


__attribute__((overloadable)) NSNumber *ArsMin(NSArray *numbers) {
    NSCParameterAssert(numbers != nil);
    return [numbers valueForKeyPath:@"@min.self"];
}

__attribute__((overloadable)) NSNumber *ArsMax(NSArray *numbers) {
    NSCParameterAssert(numbers != nil);
    return [numbers valueForKeyPath:@"@max.self"];
}

