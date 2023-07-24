# String Interpolation Lab Exercises

In this lab, you will practice various methods of string interpolation in Python. Use the provided exercises to reinforce your understanding of f-strings, str.format(), %-formatting, and Template strings. Complete each exercise by writing Python code that correctly performs the string interpolation as specified.

## Exercise 1

You are given the following variables:

```python
name = "John"
age = 28
height = 175.3
```

Create an f-string to generate the following message:

```
"My name is John, I am 28 years old, and my height is 175.3 cm."
```

## Exercise 2

You have a dictionary containing information about three books:

```python
book1 = {'title': 'Python Crash Course', 'author': 'Eric Matthes', 'pages': 560}
book2 = {'title': 'Learning Python', 'author': 'Mark Lutz', 'pages': 1648}
book3 = {'title': 'Fluent Python', 'author': 'Luciano Ramalho', 'pages': 792}
```

Use the str.format() method to create a formatted string for each book in the following format:

```
"Title: {title}, Author: {author}, Pages: {pages}"
```

## Exercise 3

Calculate the following mathematical expression:

```
(5 + 7) * (13 - 9)
```

Now, using the result, create a formatted string using %-formatting to display the following message:

```
"The result of (5 + 7) * (13 - 9) is <result>."
```

Replace `<result>` with the calculated value.

## Exercise 4

You are given the following template string:

```python
template = "Hello, $name! Welcome to $city."
```

Create a function named `interpolate_template` that takes two arguments, `name` and `city`, and uses Template strings to interpolate the values into the template string. The function should return the interpolated message.

Example:

```python
message = interpolate_template("Alice", "New York")
print(message)
```

Output:

```
"Hello, Alice! Welcome to New York."
```

## Exercise 5

Create a function called `print_circle_info` that takes two arguments, `radius` and `pi`, and uses string interpolation with f-strings to print the following message:

```
"The area of a circle with radius 5 and pi 3.14 is 78.5."
```

Note: The radius and pi values should be interpolated into the string, and the area should be calculated using the formula: `area = pi * radius ** 2`.

## Conclusion

These exercises cover the various string interpolation methods in Python. Use them to practice and reinforce your knowledge of f-strings, str.format(), %-formatting, and Template strings. Understanding string interpolation will be beneficial when working with dynamic strings in real-world Python projects. Happy coding!

---
Happy coding and may your programming journey be filled with creativity, success, and endless possibilities! 🚀👩‍💻👨‍💻 Keep exploring, learning, and creating amazing things! 🌟😊
