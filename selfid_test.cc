#include <iostream>
#include "selfid.h"

int main() {
  SelfId::identify("selfid_test");
  std::cout << "Hello World!" << std::endl;
  return 0;
}
