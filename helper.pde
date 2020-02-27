float getTotalPoints(Map<Integer, Task> tasks) {
  float result = 0.0;
  for (Map.Entry<Integer, Task> entry : tasks.entrySet()) {
    Task value = entry.getValue();
    result += value.points;
  }
  return result;
}

float getTotalMaxPoints() {
  float result = 0.0;
  for (Map.Entry<Integer, AverageTask> entry : average.entrySet()) {
    AverageTask value = entry.getValue();
    result += value.maxPoints;
  }
  return result;
}

float getTotalAveragePoints() {
  float result = 0.0;
  for (Map.Entry<Integer, AverageTask> entry : average.entrySet()) {
    AverageTask value = entry.getValue();
    result += value.getAveragePoints();
  }
  return result;
}

String convertPoints(float points) {
  float x = points - (int) points;
  if (x < 0.000001) { 
    return Integer.toString((int) points);
  } else {
    String formatString = "%.1f";
    return String.format(formatString, points).replace(",", ".");
  }
}

void breakText(String text, float x, float y, float lineHeight, float maxWidth) {
  String[] words = text.split(" ");
  float currentWidth = 0;
  float currentX = x;
  float currentY = y;
  // correct text position to go up
  currentWidth = pdf.textWidth(words[0] + " ");
  for (int i = 1; i < words.length; i++) {    
    if (currentX + currentWidth - x >= maxWidth) {
      currentX = x;
      currentY -= lineHeight;
      currentWidth = 0;
    } else {
      currentX += currentWidth;
    }
    currentWidth = pdf.textWidth(words[i] + " ");
  }
  
  // print text  
  currentX = x;
  pdf.text(words[0] + " ", currentX, currentY);
  currentWidth = pdf.textWidth(words[0] + " ");
  for (int i = 1; i < words.length; i++) {    
    if (currentX + currentWidth - x >= maxWidth) {
      currentX = x;
      currentY += lineHeight;
      currentWidth = 0;
    } else {
      currentX += currentWidth;
    }
    pdf.text(words[i] + " ", currentX, currentY);
    currentWidth = pdf.textWidth(words[i] + " ");
  }
}
