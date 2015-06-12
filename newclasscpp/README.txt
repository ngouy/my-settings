create two files such as if i want to create a new class called "foo" :

$cncpp foo

Foo.class.hpp created
Foo.class.cpp created

$cat Foo.class.hpp
// ************************************************************************** //
//                                                                            //
//                   Foo.class.hpp for newclasscpp                            //
//                   created on juin ven. 12 03:07 2015                       //
//                   Made by : nathan  <>                                     //
//                                                                            //
// ************************************************************************** //

#ifndef FOO_CLASS_H
# define FOO_CLASS_H



class Foo {

public:

	Foo( void );
	~Foo( void );

};


#endif // ******************************************************************* //

$cat Foo.class.cpp
// ************************************************************************** //
//                                                                            //
//                   Foo.class.cpp for newclasscpp                            //
//                   created on juin ven. 12 03:07 2015                       //
//                   Made by : nathan  <>                                     //
//                                                                            //
// ************************************************************************** //

#include <iostream>
#include "Foo.class.hpp"



Foo::Foo( void ) {

	std::cout << "Constructor called" << std::endl;
	return;
}


Foo::~Foo( void ) {

	std::cout << "Destructor called" << std::endl;
	return;
}
// ************************************************************************** //
