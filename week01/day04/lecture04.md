# Data Science Daily Class

## Week 01

## Day 04: [Tuples, Dictionaries, Modules, Numpy I/O Functions in Python]

### Overview
In Python, tuples are an immutable data type that allows you to store a collection of elements. They are defined using parentheses and can hold different data types. Tuples are commonly used for fixed sets of related data and are faster than lists for certain operations.

Dictionaries in Python are a data structure that stores key-value pairs. They provide an efficient way to store, retrieve, and manipulate data using unique keys as identifiers.

Modules in Python are files containing Python definitions and statements. They allow you to organize code logically and reuse functionality across multiple programs using the `import` statement.

NumPy I/O functions in the Numerical Python library provide tools for reading and writing data in various formats. They include functions like `numpy.savetxt()` and `numpy.loadtxt()` for handling text files, and `numpy.save()` and `numpy.load()` for saving and loading data in NumPy binary format (.npy files).
### Class Content

# 1. Tuples in Python

Tuples are an immutable data type in Python, which means once created, their elements cannot be changed. They are defined using parentheses `()` and can store a collection of different data types.

## Creating Tuples

Tuples can be created by enclosing elements in parentheses. Here are a few examples:

```python
# Empty tuple
empty_tuple = ()

# Tuple with elements
fruits = ('apple', 'banana', 'orange')

# Tuple with different data types
mixed_tuple = (1, 'hello', 3.14, True)
```

## Accessing Elements

Elements in a tuple can be accessed using indexing, just like lists:

```python
fruits = ('apple', 'banana', 'orange')
print(fruits[0])  # Output: 'apple'
print(fruits[1])  # Output: 'banana'
print(fruits[2])  # Output: 'orange'
```

## Tuple Methods

Tuples have a few built-in methods, although being immutable, they have fewer methods compared to lists:

1. `count()`: Returns the number of occurrences of a specified value in the tuple.

```python
fruits = ('apple', 'banana', 'orange', 'banana')
count_banana = fruits.count('banana')
print(count_banana)  # Output: 2
```

2. `index()`: Returns the index of the first occurrence of a specified value in the tuple.

```python
fruits = ('apple', 'banana', 'orange', 'banana')
index_banana = fruits.index('banana')
print(index_banana)  # Output: 1
```

## Tuple Packing and Unpacking

Tuples support packing and unpacking, allowing you to assign multiple variables at once:

```python
# Tuple Packing
fruits = ('apple', 'banana', 'orange')
print(fruits)  # Output: ('apple', 'banana', 'orange')

# Tuple Unpacking
fruit1, fruit2, fruit3 = fruits
print(fruit1)  # Output: 'apple'
print(fruit2)  # Output: 'banana'
print(fruit3)  # Output: 'orange'
```

## Advantages of Tuples

- Tuples are faster than lists when it comes to certain operations.
- They are used for data that should not be modified after creation, like coordinates, RGB colors, etc.
- Tuples can be used as keys in dictionaries, which lists cannot.

Tuples provide a useful data structure in Python when you need an immutable collection of elements. Use them when you want to ensure data integrity and avoid accidental modification.

Remember, tuples are immutable, so you cannot add, remove, or modify elements after creation.

# 2. Dictionaries in Python

Dictionaries in Python are an essential data structure that store key-value pairs. They are defined using curly braces `{}` and allow fast retrieval and modification of data based on keys.

## Creating Dictionaries

Dictionaries can be created by enclosing key-value pairs within curly braces. Here are some examples:

```python
# Empty dictionary
empty_dict = {}

# Dictionary with key-value pairs
student = {
    'name': 'Alice',
    'age': 25,
    'major': 'Computer Science'
}

# Dictionary with different data types
mixed_dict = {
    'name': 'Bob',
    'age': 30,
    'is_student': True,
    'grades': [85, 90, 78]
}
```

## Accessing Values

Values in a dictionary can be accessed using keys:

```python
student = {
    'name': 'Alice',
    'age': 25,
    'major': 'Computer Science'
}

print(student['name'])  # Output: 'Alice'
print(student['age'])   # Output: 25
print(student['major']) # Output: 'Computer Science'
```

## Dictionary Methods

Dictionaries have several built-in methods for common operations:

1. `keys()`: Returns a view object that displays a list of all the keys in the dictionary.

```python
student = {'name': 'Alice', 'age': 25, 'major': 'Computer Science'}
keys = student.keys()
print(keys)  # Output: dict_keys(['name', 'age', 'major'])
```

2. `values()`: Returns a view object that displays a list of all the values in the dictionary.

```python
student = {'name': 'Alice', 'age': 25, 'major': 'Computer Science'}
values = student.values()
print(values)  # Output: dict_values(['Alice', 25, 'Computer Science'])
```

3. `items()`: Returns a view object that displays a list of tuples containing key-value pairs.

```python
student = {'name': 'Alice', 'age': 25, 'major': 'Computer Science'}
items = student.items()
print(items)  # Output: dict_items([('name', 'Alice'), ('age', 25), ('major', 'Computer Science')])
```

4. `get()`: Returns the value for the specified key. If the key does not exist, it returns a default value (optional).

```python
student = {'name': 'Alice', 'age': 25, 'major': 'Computer Science'}
name = student.get('name')
grade = student.get('grade', 'Not Available')
print(name)    # Output: 'Alice'
print(grade)   # Output: 'Not Available'
```

5. `update()`: Updates the dictionary with the specified key-value pairs.

```python
student = {'name': 'Alice', 'age': 25, 'major': 'Computer Science'}
student.update({'age': 26, 'is_student': True})
print(student)  # Output: {'name': 'Alice', 'age': 26, 'major': 'Computer Science', 'is_student': True}
```

## Advantages of Dictionaries

- Dictionaries provide a flexible and efficient way to store and manage data with meaningful key-value relationships.
- They are ideal for quick data lookup based on keys, making them essential for tasks like database operations and caching.
- Dictionaries can represent complex data structures like JSON objects, enabling easy data manipulation and serialization.

Dictionaries are a powerful tool in Python that plays a crucial role in data handling and organizing. Use them whenever you need to map and retrieve data based on keys.

# 3. Modules in Python

A module in Python is a file containing Python definitions and statements. It serves as a container for reusable code and allows you to organize your program logically. Modules provide a way to split code into separate files for better maintainability and reusability.

## Creating a Module

To create a module, you simply write Python code in a file with a `.py` extension. For example, let's create a module named `math_operations.py`:

```python
# math_operations.py

def add(x, y):
    return x + y

def subtract(x, y):
    return x - y

def multiply(x, y):
    return x * y

def divide(x, y):
    return x / y
```

## Using a Module

To use the functions defined in a module, you need to import the module into your Python script. Here's an example of how to use the `math_operations.py` module:

```python
# main.py

import math_operations

result_add = math_operations.add(5, 3)
result_subtract = math_operations.subtract(8, 4)
result_multiply = math_operations.multiply(2, 6)
result_divide = math_operations.divide(10, 2)

print("Addition:", result_add)         # Output: Addition: 8
print("Subtraction:", result_subtract) # Output: Subtraction: 4
print("Multiplication:", result_multiply) # Output: Multiplication: 12
print("Division:", result_divide)     # Output: Division: 5.0
```

## Importing Specific Functions

Instead of importing the whole module, you can import specific functions to use directly without specifying the module name:

```python
# main.py

from math_operations import add, multiply

result_add = add(5, 3)
result_multiply = multiply(2, 6)

print("Addition:", result_add)         # Output: Addition: 8
print("Multiplication:", result_multiply) # Output: Multiplication: 12
```

## Renaming a Module

You can give a module an alias when importing to use a shorter name:

```python
# main.py

import math_operations as math_ops

result_add = math_ops.add(5, 3)
result_multiply = math_ops.multiply(2, 6)

print("Addition:", result_add)         # Output: Addition: 8
print("Multiplication:", result_multiply) # Output: Multiplication: 12
```

## Creating Your Own Module Folder

You can also create your own module folder to organize multiple related modules. Suppose you have the following directory structure:

```
my_modules/
    |- __init__.py
    |- math_operations.py
    |- string_operations.py
```

In this case, `my_modules` is a package, and you can import modules from this package into your Python scripts.

## Built-in Modules

Python comes with a set of built-in modules that provide additional functionality. For example, you can use the `random` module to generate random numbers or the `datetime` module to work with dates and times.

```python
# Using built-in modules

import random

random_number = random.randint(1, 10)
print("Random number between 1 and 10:", random_number)

import datetime

current_time = datetime.datetime.now()
print("Current time:", current_time)
```

## Conclusion

Modules in Python allow you to organize your code, make it more reusable, and use additional functionality through built-in modules. By breaking down your code into smaller, manageable units, you can write clean and efficient Python programs.

# 4. NumPy I/O Functions and Methods

NumPy, the Numerical Python library, provides various I/O (input/output) functions to work with different file formats and perform data operations efficiently. In this guide, we'll explore the essential I/O functions along with their methods and examples.

## NumPy I/O Functions

### 1. `numpy.savetxt(fname, X, fmt='%.18e', delimiter=' ')`

- Save an array to a text file.
- `fname`: File name or file handle to write the data.
- `X`: Array or data to be saved.
- `fmt`: Format of the data to be written. Default is `'%.18e'`.
- `delimiter`: String or character to separate columns. Default is `' '`.

```python
import numpy as np

data = np.array([[1, 2, 3], [4, 5, 6]])
np.savetxt('data.txt', data, fmt='%d', delimiter=',')
```

### 2. `numpy.loadtxt(fname, dtype=float, comments='#', delimiter=None, skiprows=0, usecols=None)`

- Load data from a text file.
- `fname`: File name or file handle from which to read the data.
- `dtype`: Data type of the resulting array. Default is `float`.
- `comments`: Character(s) used to indicate the start of a comment. Default is `'#'`.
- `delimiter`: String or character to separate columns. Default is `None`, which means any whitespace.
- `skiprows`: Number of rows to skip at the beginning of the file. Default is `0`.
- `usecols`: Indices or column names to read from the file. Default is `None` (all columns).

```python
import numpy as np

data = np.loadtxt('data.txt', dtype=int, delimiter=',')
print(data)
```

## NumPy I/O Methods

### 1. `numpy.save(file, arr, allow_pickle=True, fix_imports=True)`

- Save an array to a binary file in NumPy `.npy` format.
- `file`: File or file-like object where the data is saved.
- `arr`: Array data to be saved.
- `allow_pickle`: Allow pickling of Python objects. Default is `True`.
- `fix_imports`: Fix object import in Python 2/3 compatibility. Default is `True`.

```python
import numpy as np

data = np.array([1, 2, 3, 4, 5])
np.save('data.npy', data)
```

### 2. `numpy.load(file, mmap_mode=None, allow_pickle=True, fix_imports=True, encoding='ASCII')`

- Load data from a NumPy `.npy` file.
- `file`: File or file-like object from which to load the data.
- `mmap_mode`: Memory-mapping mode. Default is `None`.
- `allow_pickle`: Allow pickling of Python objects. Default is `True`.
- `fix_imports`: Fix object import in Python 2/3 compatibility. Default is `True`.
- `encoding`: Encoding used to decode the file. Default is `'ASCII'`.

```python
import numpy as np

data = np.load('data.npy')
print(data)
```

## Conclusion

NumPy I/O functions and methods provide powerful tools to save and load data in various formats. Whether you are working with text files or binary files, NumPy makes it easy to handle large datasets efficiently. By using these functions and methods, you can seamlessly integrate NumPy with your data processing pipelines.

Happy coding with NumPy! 🚀🔢

# Resources

This resource contains the official lecture file for the topic, providing detailed explanations, examples, and exercises to enhance your understanding of the subject matter. It serves as a comprehensive guide for the concepts covered in the lecture.

- Resource 1: [Official Lecture File](https://drive.google.com/file/d/1sNSVGby5CNEyR1yJz6j4mE4ttro7wlzN/view?usp=drive_link)
- Resource 2: [Class Work by Asad Jalbani](https://github.com/asadjalbani/datasciencebootcamp2023/blob/main/week01/day04/Day%2004.ipynb)
- Resource 3: [Class work GDrive](https://drive.google.com/file/d/1_otRfQEy5qq_MNIKYC0rUiOdv8spIKZL/view?usp=drive_link)

# Challenges and Exercises

Below are some optional challenges and exercises related to the topic. These tasks are designed to encourage students to practice and apply what they have learned. Clear instructions or problem statements are provided for each challenge. Feel free to attempt these challenges to further enhance your understanding and skills.

- Challenge 1: [Tuples Exercise](https://github.com/asadjalbani/datasciencebootcamp2023/blob/main/week01/day04/tuples_exercise.md)
- Challenge 2: [Dictionary Exercise](https://github.com/asadjalbani/datasciencebootcamp2023/blob/main/week01/day04/dictionary_exercise.md)
- Challenge 3: [Module Exercise](https://github.com/asadjalbani/datasciencebootcamp2023/blob/main/week01/day04/module_exercise.md)
- Challenge 4: [Numpy I/O Exercise](https://github.com/asadjalbani/datasciencebootcamp2023/blob/main/week01/day04/numpy_io_exercise.md)

Take your time to work on these challenges, and feel free to ask questions or seek help if needed. Practice is key to mastering the concepts covered in the class, and these challenges provide an opportunity to apply your knowledge and gain hands-on experience.
- - -

Feel free to ask questions and discuss any difficulties you encounter while working on the challenges. The GitHub repository's Issues section is a great place for open discussions.

Looking forward to your engagement and success in mastering data science concepts!

## Connect with Me

You can find me on the following social media platforms:

# Asad Ahmed Jalbani 

- LinkedIn: [Asad Ahmed](https://www.linkedin.com/in/yourprofile)
- Twitter: [@AsadJalbani007](https://twitter.com/AsadJalbani007)
- Facebook: [Asad Bin Khalique](https://www.facebook.com/asadahmed.jalbani.1)

Feel free to connect with me on these platforms. I'm open to discussions, collaborations, and sharing insights related to the topic. Let's stay connected and continue our learning journey together!


Happy connecting and networking!
