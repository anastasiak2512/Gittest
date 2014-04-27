//
// Created by AK on 16/04/14.
// Copyright (c) 2014 JB. All rights reserved.
//

#include <list>
#include <map>
#import <iostream>

uint64_t boo(uint32_t x) {
    std::cout << "Hello, World!\n";
    using Map_t = std::map<std::string, std::pair<int, long>>;
    Map_t myMap;
    myMap["foo"] = std::make_pair(3, 5L);
    std::cout << "map contents: " << myMap["foo"].first << ", " << myMap["foo"].second << std::endl;

    if (x == 0) {
        return 0;
    } else if (x == 1) {
        return 1;
    } else if (x == 1) {
        return 2;
    } else {
        return boo(x-1) + boo(x-2);
    }
}


#define FOO(U) class U
#define boo_func void boo

boo_func() {
}

FOO(Test) {
    void method() {
    }
};


typedef struct Foo {
    int a;
    int m[3];
    int b;
    std::list<int> mem;
    std::list<int> mem1;
} Foo;

Foo test[] = {{1, {2, 3, 4},          5,       {6, 7, 8},
                                                             {9, 10, 11, 12}},
              {1,
                  {2, 4 + 2 + 3 + 4}, 5,       {6},          {9, 10}},
              {1, {2, 3, 4},          5,       {6, 3, 3, 3}, {9, 10}},
              {1 + 100,
                  {2},
                                      5 + 123, {6},
                                                             {9}}};
