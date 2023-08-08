# Data Science Daily Class

## Week 04

## Day 02: [ k-Nearest Neighbors (KNN) Algorithm in Machine Learning]

## Overview

Please note that this overview provides a brief explanation of the k-Nearest Neighbors algorithm.
---
## Class Content

### k-Nearest Neighbors (KNN) Algorithm

## Overview

The k-Nearest Neighbors (KNN) algorithm is a simple and intuitive supervised machine learning algorithm used for classification and regression tasks. It is a non-parametric and instance-based algorithm that makes predictions based on the similarity of the input data points to their k nearest neighbors.

KNN is a lazy learner, which means it does not explicitly learn a model during the training phase. Instead, it memorizes the training data and makes predictions based on the stored instances.

## Algorithm Steps

1. **Load Data:**
   Load the training dataset, which consists of labeled instances.

2. **Select k:**
   Choose the number of neighbors (k) to consider when making predictions.

3. **Distance Calculation:**
   Calculate the distance between the input data point and all instances in the training dataset. Common distance metrics include Euclidean distance, Manhattan distance, and others.

4. **Find Nearest Neighbors:**
   Identify the k instances with the shortest distances to the input data point.

5. **Majority Voting (Classification):**
   For classification tasks, determine the class label by counting the occurrences of each class among the k nearest neighbors and selecting the class with the highest count.

6. **Weighted Voting (Regression):**
   For regression tasks, compute the weighted average of the target values of the k nearest neighbors, with weights based on their distances.

7. **Make Prediction:**
   Assign the predicted class label (classification) or regression value to the input data point.

## Hyperparameters

- **k:** The number of neighbors to consider when making predictions. Choosing an appropriate value of k is crucial. A small k may lead to noise in predictions, while a large k may smooth out important patterns.

- **Distance Metric:** The method used to measure the distance between data points, such as Euclidean distance, Manhattan distance, etc.

## Strengths and Weaknesses

**Strengths:**
- Simple and easy to understand.
- Effective for small to moderately sized datasets.
- Can handle both classification and regression tasks.

**Weaknesses:**
- Can be sensitive to the choice of k and the distance metric.
- Computationally expensive for large datasets during prediction.
- Doesn't perform well on high-dimensional data ("curse of dimensionality").

## Use Cases

- Recommender systems.
- Image classification.
- Anomaly detection.
- Geographic information systems (GIS).

---

 For more detailed information and practical implementation, refer to official documentation and tutorials for the programming language and machine learning library you're using.
 
 - [KNN Notes GDrive](https://drive.google.com/file/d/14I7--0v78ee62XMDMfnC0eAaAfnXHYnD/view?usp=drive_link)
 - [KNN Notes Github](https://github.com/asadjalbani/datasciencebootcamp2023/blob/main/week04/day02/02_knn_notes.pdf)
--- 
# Resources

This resource contains the reference lecture file for the topic, providing detailed explanations, examples, and exercises to enhance your understanding of the subject matter. It serves as a comprehensive guide for the concepts covered in the lecture.

- Resource 1: [Reference Lecture File](https://drive.google.com/file/d/14I7--0v78ee62XMDMfnC0eAaAfnXHYnD/view?usp=drive_link)
- Resource 2: [KNN_Notebook file by Asad Ahmed](https://drive.google.com/file/d/11hWmANcaZ3_rkmHSCFhzGKLzMIJzfUh-/view?usp=drive_link)
- Resource 3: [Class work GDrive](https://drive.google.com/drive/folders/11HvI-oV5DANED3xrckK3LJ5b99RYQGq6)

# Challenges and Exercises

Below is official exercise given by Dr. Aleem for students to do it.

- Challenge 1: [Class Task](https://github.com/asadjalbani/datasciencebootcamp2023/blob/main/week04/day02/knn_assignment.md)
- - -

Feel free to ask questions and discuss any difficulties you encounter while working on the challenges. The GitHub repository's Discussion section is a great place for open discussions.

Looking forward to your engagement and success in mastering data science concepts!

## Connect with Me

You can find me on the following social media platforms:

# Asad Ahmed Jalbani 

- LinkedIn: [Asad Ahmed](https://www.linkedin.com/in/yourprofile)
- Github: [Asad Ahmed](https://www.github.com/asadjalbani)
- Twitter: [@AsadJalbani007](https://twitter.com/AsadJalbani007)
- Facebook: [Asad Bin Khalique](https://www.facebook.com/asadahmed.jalbani.1)

Feel free to connect with me on these platforms. I'm open to discussions, collaborations, and sharing insights related to the topic. Let's stay connected and continue our learning journey together!


Happy connecting and networking!
