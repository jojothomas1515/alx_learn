#!/usr/bin/env python

import re

class Person:

    def __init__(self, name, age,gender):
        """This is doc for person

        args:
           name: the name of the person instance
           age: the age of the person instance
           gender: the gender of the person instance
        """

        self.name = name
        self.age = age
        self.gender = gender

    @property
    def gender(self):
        return self._gender

    @gender.setter
    def gender(self, value: str):
        validator = re.compile(r"^(male|female|m|f)$", re.IGNORECASE)
        if validator.match(value):
            if value.lower() in ['male','m']:
                self._gender = "Male"
            else:
                self._gender = "Female"
        else:
            print("invalid value");

    def __add__(self, number):
        self.age += number


jojo = Person("Jojo Thomas", 24, "male")

jojo.name = "gina"
jojo.gender = "f"

print(jojo.name)
print(jojo.gender)
