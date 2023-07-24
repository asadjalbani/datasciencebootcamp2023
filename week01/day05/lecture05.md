# Data Science Daily Class

## Week 01

## Day 05: [Pandas, String Interpolation in Python]

### Class Content

# Introduction to Pandas in Python

Pandas is a powerful open-source library in Python that provides data manipulation and analysis tools. It is built on top of the NumPy library and is particularly useful for handling structured data, such as CSV files, Excel spreadsheets, SQL tables, and more. Pandas is widely used in data science, data analysis, and machine learning projects due to its ease of use and efficiency.

## Installation

To install Pandas, you can use the Python package manager `pip`. Open a terminal or command prompt and run the following command:

```
pip install pandas
```

## Importing Pandas

Before you start using Pandas in your Python script, you need to import the library. Conventionally, Pandas is imported with the alias `pd`:

```python
import pandas as pd
```

## 1. Pandas Data Structures

Pandas provides two main data structures: Series and DataFrame.

### 1. Series

A Series is a one-dimensional labeled array that can hold data of any type (integers, strings, floats, etc.). It is similar to a Python list but with additional functionality.

```python
# Creating a Series
s = pd.Series([1, 3, 5, 7, 9])
```

### 2. DataFrame

A DataFrame is a two-dimensional labeled data structure, resembling a spreadsheet or SQL table. It consists of rows and columns, where each column can contain different types of data. DataFrames are the primary data structure used for data manipulation in Pandas.

```python
# Creating a DataFrame from a dictionary
data = {
    'Name': ['Alice', 'Bob', 'Charlie', 'David'],
    'Age': [25, 30, 35, 40],
    'City': ['New York', 'London', 'Paris', 'Tokyo']
}

df = pd.DataFrame(data)
```

## Common Pandas Methods

### 1. Data Inspection

```python
# Check the first few rows of the DataFrame
df.head()

# Check the last few rows of the DataFrame
df.tail()

# Get basic statistics of the DataFrame
df.describe()

# Get information about the DataFrame (data types, non-null values, etc.)
df.info()
```

### 2. Data Selection and Indexing

```python
# Access a specific column in the DataFrame
df['Name']

# Access multiple columns
df[['Name', 'Age']]

# Access a specific row using iloc (integer-based indexing)
df.iloc[0]

# Access rows and columns using iloc
df.iloc[0:2, 1:3]

# Access a specific row using loc (label-based indexing)
df.loc[0]

# Access rows and columns using loc
df.loc[0:2, 'Name':'Age']
```

### 3. Data Cleaning and Manipulation

```python
# Drop rows with missing values
df.dropna()

# Fill missing values with a specific value
df.fillna(0)

# Filter rows based on a condition
df[df['Age'] > 30]

# Add a new column to the DataFrame
df['Gender'] = ['Female', 'Male', 'Male', 'Male']

# Rename columns
df.rename(columns={'Name': 'Full Name', 'City': 'Location'}, inplace=True)

# Sort the DataFrame by a specific column
df.sort_values(by='Age', ascending=False)
```

### 4. Data Aggregation

```python
# Calculate the mean of a column
df['Age'].mean()

# Group data by a specific column and calculate aggregate functions
df.groupby('Gender')['Age'].mean()
```

### 5. Data Input and Output

```python
# Read data from a CSV file
data = pd.read_csv('data.csv')

# Write data to a CSV file
df.to_csv('output.csv', index=False)

# Read data from an Excel file
data = pd.read_excel('data.xlsx', sheet_name='Sheet1')

# Write data to an Excel file
df.to_excel('output.xlsx', sheet_name='Sheet1', index=False)
```

These are just a few of the many methods provided by Pandas. The library is extensive and allows you to perform complex data manipulation and analysis with ease.

For more detailed information and examples, you can refer to the [official Pandas documentation:](https://pandas.pydata.org/docs/)

# 2. String Interpolation in Python

String interpolation is the process of inserting values into a string dynamically. In Python, there are multiple ways to achieve string interpolation, and each method offers different levels of readability and flexibility. Let's explore the different methods with examples.

## 1. Using f-strings (Python 3.6+)

F-strings, also known as formatted string literals, are a convenient and straightforward way of string interpolation. You can include expressions inside curly braces `{}` directly within the string.

```python
name = "Alice"
age = 30
height = 165.5

# Example 1: Using f-strings to interpolate variables
message = f"My name is {name}, I am {age} years old, and my height is {height} cm."
print(message)  # Output: "My name is Alice, I am 30 years old, and my height is 165.5 cm."

# Example 2: Using f-strings for expressions
result = f"The sum of 5 and 10 is {5 + 10}."
print(result)  # Output: "The sum of 5 and 10 is 15."
```

## 2. Using str.format() method (Python 2.6+ and 3.x)

The `str.format()` method allows you to perform string interpolation by specifying placeholders within curly braces `{}` and then using the `format()` method to replace them with values.

```python
name = "Bob"
age = 25

# Example 1: Using str.format() to interpolate variables
message = "My name is {}, and I am {} years old.".format(name, age)
print(message)  # Output: "My name is Bob, and I am 25 years old."

# Example 2: Using str.format() with named placeholders
message = "My name is {name}, and I am {age} years old.".format(name=name, age=age)
print(message)  # Output: "My name is Bob, and I am 25 years old."
```

## 3. Using %-formatting (Python 2.x, deprecated in Python 3.8)

The `%` operator can be used for string interpolation, although this method is considered old and has been deprecated in Python 3.8. It involves using placeholders like `%s` (string), `%d` (integer), and `%f` (float) within the string and then using the `%` operator to replace them with values.

```python
name = "Charlie"
age = 35

# Example: Using %-formatting for string interpolation
message = "My name is %s, and I am %d years old." % (name, age)
print(message)  # Output: "My name is Charlie, and I am 35 years old."
```

## 4. Using Template Strings (string.Template)

Python also provides a module called `string.Template` that allows string interpolation using placeholders indicated by `$`.

```python
from string import Template

name = "David"
age = 40

# Example: Using Template Strings for string interpolation
template = Template("My name is $name, and I am $age years old.")
message = template.substitute(name=name, age=age)
print(message)  # Output: "My name is David, and I am 40 years old."
```

## Conclusion

String interpolation in Python allows you to create dynamic strings by embedding variables, expressions, or other values into a template string. F-strings (`f"..."`) are the most modern and preferred method for string interpolation in Python 3.6 and above due to their simplicity and readability. However, the other methods (`str.format()`, `%`-formatting, and `string.Template`) are also available and can be useful in different situations or for compatibility with older Python versions. Choose the method that suits your coding style and project requirements.
# Resources

This resource contains the official lecture file for the topic, providing detailed explanations, examples, and exercises to enhance your understanding of the subject matter. It serves as a comprehensive guide for the concepts covered in the lecture.

- Resource 1: [Official Lecture File](https://drive.google.com/file/d/1r5_VaZXJWrfyjJ26x65E9wUzN-kdqG31/view?usp=drive_link)
- Resource 2: [Class Work by Asad Jalbani](https://drive.google.com/file/d/1SYrkUSmiGLUj_rTDkMpTzUYgBY76SlT-/view?usp=drive_link)

# Challenges and Exercises

Below are some optional challenges and exercises related to the topic. These tasks are designed to encourage students to practice and apply what they have learned. Clear instructions or problem statements are provided for each challenge. Feel free to attempt these challenges to further enhance your understanding and skills.

- Challenge 1: [String Interpolation Exercise](https://github.com/asadjalbani/datasciencebootcamp2023/blob/main/week01/day05/string_interpolation_exercise.md)
- Challenge 2: [Pandas Exercise](https://github.com/asadjalbani/datasciencebootcamp2023/blob/main/week01/day05/pandas_exercise.md)

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

