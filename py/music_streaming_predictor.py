"""
Matthew McGilvery
January 10, 2023  

Predicts music streaming demand for artists based on marketing KPIs.
Optimized for artists and tech nerds interested in data-driven streaming prediction.
"""

import numpy as np

def predict_streaming_demand(kpis):
  """
  Predicts streaming demand for a music artist based on key marketing KPIs.

  Using a weighted average of marketing metrics like follows, 
  likes, and reposts, this script estimates the potential streaming
  demand for an artist's music. Useful for artists looking to 
  forecast and predict streaming demand based on growth.
  """

  # Weights for KPIs
  weights = [0.3, 0.2, 0.25, 0.25]

  # Calculate weighted avg  
  weighted_avg = np.average(kpis, weights=weights)
  
  # Convert to streaming prediction
  streaming_prediction = weighted_avg * 10  

  return streaming_prediction

if __name__ == "__main__":

  # Get KPIs
  kpis = []

  for i in range(4):
    kpi = int(input(f"Enter KPI {i+1} value: "))
    kpis.append(kpi)

  # Predict streams  
  prediction = predict_streaming_demand(kpis)

  # Print streaming prediction
  print(f"\nPredicted Streams: {prediction}")
