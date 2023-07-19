# Data Science Daily Class

## Week 01

## Day 03: [Format Specifiers, File Handling, List and Built-in-function in Python]

### Overview
Format Specifiers: Format specifiers are placeholders used in strings to control the formatting of values, such as strings, numbers, or characters, providing a structured way to display data in a desired format.

File Handling: File handling involves operations like opening, reading, writing, and closing files in Python, enabling interaction with external files to retrieve or store data for processing or manipulation.

Lists and Built-in Functions: Lists are versatile data structures for storing collections of items, allowing easy access, modification, and iteration. Built-in functions in Python are pre-defined functions that provide common functionality, such as printing, input, length calculation, sorting, and more, without needing additional imports.

### Class Content

## 1. Format Specifiers

Format specifiers in Python are used to control the formatting of values within strings. They allow you to specify how data should be represented, such as strings, numbers, or other types, when they are inserted into a formatted string. Format specifiers are typically used with the `format()` method or f-strings (formatted string literals).

### String Format Specifier `%s`

The `%s` format specifier is used to represent strings within a formatted string. It can be used to insert any string value into the formatted output.

Example:
```python
name = "John"
age = 25
print("My name is %s and I am %s years old." % (name, age))
```

### Integer Format Specifier `%d`

The `%d` format specifier is used for integer values within a formatted string. It can represent both positive and negative integers.

Example:
```python
number = 42
print("The answer is %d." % number)
```

### Floating-Point Format Specifier `%f`

The `%f` format specifier is used for floating-point numbers within a formatted string. It allows you to control the precision and decimal places displayed.

Example:
```python
pi = 3.14159
print("The value of pi is approximately %.2f." % pi)
```

### Character Format Specifier `%c`

The `%c` format specifier represents a single character within a formatted string. It is used to display individual characters from their ASCII values.

Example:
```python
char_code = 65
print("The character is %c." % char_code)
```

### Binary and Hexadecimal Format Specifiers `%b` and `%x`

The `%b` format specifier represents a number in binary format, and `%x` represents a number in hexadecimal format within a formatted string.

Example:
```python
number = 10
print("The binary representation is %b." % number)
print("The hexadecimal representation is %x." % number)
```

These are some commonly used format specifiers in Python. They offer flexibility in formatting values within strings to meet specific requirements. Remember to include the appropriate specifier within the string and provide the corresponding values to be inserted using the `%` operator or the `format()` method. [Reference](https://www.w3schools.com/python/ref_string_format.asp)

## 2. File Handling in Python

File Handling in Python allows you to work with files, performing operations such as opening, reading, writing, and closing them. It enables you to interact with external files, retrieve data from them, and store data in them.

### Opening a File

To open a file in Python, you can use the `open()` function. It takes two parameters: the file path and the mode. The mode can be `'r'` for reading, `'w'` for writing, `'a'` for appending, or `'x'` for creating a new file.

```python
file = open("filename.txt", "r")
```

### Reading from a File

After opening a file for reading, you can use methods like `read()`, `readline()`, or `readlines()` to read its contents. For example:

```python
file = open("filename.txt", "r")
content = file.read()
print(content)
file.close()
```

### Writing to a File

To write to a file, open it in write mode (`'w'`) or append mode (`'a'`). Use the `write()` method to write a string to the file.

```python
file = open("filename.txt", "w")
file.write("Hello, World!")
file.close()
```

### Closing a File

It's important to close the file after you have finished working with it to free up system resources. You can use the `close()` method or the `with` statement, which automatically closes the file when you are done.

```python
with open("filename.txt", "r") as file:
    content = file.read()
    print(content)
```

### Exception Handling

When working with files, it's important to handle exceptions to deal with potential errors. Use `try` and `except` blocks to catch and handle exceptions that may occur during file operations.

```python
try:
    file = open("filename.txt", "r")
    content = file.read()
    print(content)
except FileNotFoundError:
    print("File not found!")
finally:
    file.close()
```

These examples provide a basic understanding of File Handling in Python. Remember to handle exceptions, close files properly, and consider security aspects when dealing with sensitive data. [Reference](https://www.w3schools.com/python/python_file_handling.asp)

## 3. Lists in Python

In Python, a list is a versatile data structure that allows you to store and manipulate collections of items. Lists are ordered, mutable, and can contain elements of different types.

### Creating a List

To create a list in Python, enclose the elements within square brackets `[]`, separating them with commas.

Example:
```python
my_list = [1, 2, 3, 4, 5]
```

### Accessing Elements

You can access individual elements of a list using index values. Python uses zero-based indexing, so the first element has an index of 0.

Example:
```python
my_list = [1, 2, 3, 4, 5]
print(my_list[0])  # Output: 1
```

### Slicing a List

Slicing allows you to extract a portion of a list. You can specify a range of indices using the syntax `[start:end:step]`, where `start` is the starting index, `end` is the ending index (exclusive), and `step` is the number of elements to skip.

Example:
```python
my_list = [1, 2, 3, 4, 5]
print(my_list[1:4])  # Output: [2, 3, 4]
```

### Modifying Elements

Lists are mutable, meaning you can modify individual elements. Use the assignment operator (`=`) to change the value at a specific index.

Example:
```python
my_list = [1, 2, 3, 4, 5]
my_list[2] = 10
print(my_list)  # Output: [1, 2, 10, 4, 5]
```

### List Methods

Python provides several built-in methods to perform operations on lists. Here are some commonly used methods:

- `append()`: Adds an element to the end of the list.
- `insert()`: Inserts an element at a specific index.
- `remove()`: Removes the first occurrence of a specified value.
- `pop()`: Removes and returns the element at a specific index.
- `sort()`: Sorts the list in ascending order.
- `reverse()`: Reverses the order of the elements.

Example:
```python
my_list = [3, 1, 4, 2, 5]
my_list.append(6)
my_list.insert(0, 0)
my_list.remove(4)
popped_element = my_list.pop(2)
my_list.sort()
my_list.reverse()
print(my_list)  # Output: [6, 5, 3, 2, 1, 0]
```

These are just a few examples of list methods. There are many more available to manipulate and operate on lists in Python.
- [Here](https://www.w3schools.com/python/python_lists.asp).
- [Python List Addition Lecture](https://drive.google.com/file/d/1TybPvjiwkOsZFTTC1jctBnYxJcrWNjoN/view?usp=sharing)


## 4. Python's Built-in Functions

Python provides a set of built-in functions that are readily available without requiring additional imports. These functions offer common functionality and can be used to perform various operations in your programs.

### print()

The `print()` function is used to display output to the console. It can print strings, variables, and expressions.

Example:
```python
print("Hello, World!")
```

### input()

The `input()` function allows you to receive user input from the console. It waits for the user to enter a value and returns it as a string.

Example:
```python
name = input("Enter your name: ")
print("Hello, " + name + "!")
```

### len()

The `len()` function returns the length of an object. It can be used with strings, lists, tuples, and other iterable objects.

Example:
```python
my_list = [1, 2, 3, 4, 5]
length = len(my_list)
print("Length of the list: " + str(length))
```

### range()

The `range()` function generates a sequence of numbers. It can take one, two, or three arguments: start, stop, and step.

Example:
```python
for i in range(1, 6):
    print(i)
```

### type()

The `type()` function is used to determine the type of an object. It returns the class or type of the specified object.

Example:
```python
number = 42
print(type(number))  # Output: <class 'int'>
```

### max() and min()

The `max()` and `min()` functions return the maximum and minimum values from a sequence or a set of arguments.

Example:
```python
numbers = [5, 2, 8, 1, 9]
max_number = max(numbers)
min_number = min(numbers)
print("Maximum number: " + str(max_number))
print("Minimum number: " + str(min_number))
```

### sum()

The `sum()` function calculates the sum of a sequence of numbers.

Example:
```python
numbers = [1, 2, 3, 4, 5]
total = sum(numbers)
print("Sum of the numbers: " + str(total))
```

### sorted()

The `sorted()` function returns a new sorted list from the elements of an iterable.

Example:
```python
my_list = [3, 1, 4, 2, 5]
sorted_list = sorted(my_list)
print("Sorted list: " + str(sorted_list))
```

These are just a few examples of Python's built-in functions. There are many more available, each serving a specific purpose and providing useful functionality.
- [Here](https://www.w3schools.com/python/python_ref_functions.asp)
- [Built-in-functions in Python Addtional Lecture](https://drive.google.com/file/d/1f4phyqO1Ybtk-u3WiGsyBhJSf7XfL0rf/view?usp=sharing)


# Resources

This resource contains the official lecture file for the topic, providing detailed explanations, examples, and exercises to enhance your understanding of the subject matter. It serves as a comprehensive guide for the concepts covered in the lecture.

- [Resource 1: Official Lecture File](https://drive.google.com/file/d/1CnlX3HY83BnoLYMmcj4OTdJLr5vTpTd-/view?usp=sharing)

# Challenges and Exercises

Below are some optional challenges and exercises related to the topic. These tasks are designed to encourage students to practice and apply what they have learned. Clear instructions or problem statements are provided for each challenge. Feel free to attempt these challenges to further enhance your understanding and skills.

- Challenge 1: [Official Activity Exercise.](https://drive.google.com/file/d/15HaZCPJu6P4ZxaZVJKIxJdKX9Ck54om8/view?usp=sharing)
- Challenge 2: Description of the challenge.

Take your time to work on these challenges, and feel free to ask questions or seek help if needed. Practice is key to mastering the concepts covered in the class, and these challenges provide an opportunity to apply your knowledge and gain hands-on experience.

Happy coding and enjoy the challenges!

Feel free to ask questions and discuss any difficulties you encounter while working on the challenges. The GitHub repository's Issues section is a great place for open discussions.

# Additional Notes

Add any additional notes, tips, or clarifications related to the topic or class content.

# Feedback and Questions

Encourage students to provide feedback, ask questions, or share their thoughts about the class content. Remind them of the available communication channels, such as Slack, email, or scheduled Q&A sessions.

Looking forward to your engagement and success in mastering data science concepts!

[Asad Ahmed Jalbani]
