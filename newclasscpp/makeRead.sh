#!/bin/bash
rm -rf README

echo -e "create two files such as if i want to create a new class called \"foo\" :\n\n$ cncpp foo\n" >> README
./cncpp.sh "foo" >> README
echo -e "\n\$cat Foo.class.hpp" >> README
cat Foo.class.hpp >> README
echo -e "\n\$cat Foo.class.cpp" >> README
cat Foo.class.cpp >> README

rm -rf Foo.class.hpp
rm -rf Foo.class.cpp


