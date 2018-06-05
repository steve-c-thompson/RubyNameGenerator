## Name Generator

### Description
This is a lesson I created based on http://www.mess.be/inickgenwuname.php. The purpose is to review arrays and lead students to use the modulo operator to take a large number (a String's hashcode) and fit it into the array's indices.

We first start by finding our name using a randomly chosen first and last name.

Next, students see that the real website always returns the same name, so we have to figure out how to consistently get the same number for a name. In Java, this is a hashcode based on the ASCII values of each character in the String.

In Ruby, this isn't as straightforward. `String#hash` will give different numbers between invocations of the interpreter. Thinking of Strings in terms of ASCII characters is abstracted away from us, but String does have the `each_byte` method. That will yield a consistent result.

This can scale depending on the class. One class may need to enter first name and last name separately, and use the same method to translate to a number. A more advanced class could handle taking the name as a single String, then splitting it on whitespace, and using each name.

Students may also notice that the original website is not case-sensitive. That gives the opportunity to use `upcase` or `downcase`.

Depending on where the class is, this could use unit tests, such as:
* exists
* method returns a value
* later, method returns consistent value
* translate String to number is consistent

### Design Decisions
Module or Class? A main part of this is translating a String into a number, so that could be a Module method; same with choosing an array index. But a main driver for this project is the state of the name generator, and classes have state. (For example, this uses Wu Tang names, but another instance could use My Little Pony names.)
