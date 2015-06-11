#!/bin/bash
rm -rf README.txt

echo -e "create two files such as if i want to create a new class called \"foo\" :\n\n\$cncpp foo\n" >> README.txt
./cncpp.sh "foo" >> README.txt
echo -e "\n\$cat Foo.class.hpp" >> README.txt
cat Foo.class.hpp >> README.txt
echo -e "\n\$cat Foo.class.cpp" >> README.txt
cat Foo.class.cpp >> README.txt

rm -rf Foo.class.hpp
rm -rf Foo.class.cpp


