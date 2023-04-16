#ifndef SELFID_H
#define SELFID_H

#include <cstdio>
#include "selfid_generated.h"

struct SelfId {
  static void identify(char const * name) {
    printf("%s %s\n", name, SELFID_PRETTY_STRING);
  }
};

#endif
