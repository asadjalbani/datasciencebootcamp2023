# Assignment by Dr. Aleem for students.
---

1. Take photo from mobile of any number between 0-9
2. Create new notebook file.
3. Import saved model in new notebook file that you have created in task 2.
4. Perform Prediction on your own generated.
----

## Hint:
- You can save your trained model using this [library](https://towardsdatascience.com/using-joblib-to-speed-up-your-python-pipelines-dd97440c653d)
```python
  import joblib

# Train your model
model = ...  # Your trained scikit-learn model

# Save the model to a file
joblib.dump(model, 'model_filename.pkl')
```

Instruction:

Replace model with the actual variable name of your trained machine learning model.
Replace 'model_filename.pkl', 'model_directory', or 'model_state_dict.pth' with the desired filename or directory where you want to save the model.
\When you want to use the saved model for predictions:

```python
import joblib

# Load the saved model
loaded_model = joblib.load('model_filename.pkl')

# Use the loaded model for predictions
predictions = loaded_model.predict(data)
```
---
## Compiled By: Asad Ahmed
