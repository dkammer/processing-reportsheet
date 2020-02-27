class Task {
  Task(int n) {
    number = n;
  }
  Task(int n, int m, String d) {
    number = n;
    maxPoints = m;
    description = d;
  }
  int number;
  float points;
  float maxPoints;
  String description;
}

class AverageTask {
  AverageTask(int n) {
    number = n;
  }
  int number;
  float sum;
  int count;
  float maximum = -9999;
  float minimum = 9999;
  float maxPoints;
  float getAveragePoints() { 
    return sum / count;
  }
}

class Language {
  Map<String, Map<String, String>> words = new HashMap<String, Map<String, String>>();
  Language() {
    Map<String, String> german = new HashMap<String, String>();
    Map<String, String> english = new HashMap<String, String>();
    words.put("DE", german);
    words.put("EN", english);
    
    german.put("tasks", "Teilaufgaben");
    english.put("tasks", "Task Details");
    german.put("points", "Punkte");
    english.put("points", "Points");
    german.put("max", "Max");
    english.put("max", "Max");
    german.put("min", "Min");
    english.put("min", "Min");
    german.put("avg", "Durchschn.");
    english.put("avg", "Avg");
    german.put("best", "Beste");
    english.put("best", "Best");
    
    german.put("totalpoints", "Punkte Gesamt");
    english.put("totalpoints", "Total Points");
    german.put("averagepoints", "Durchschnittspunktzahl");
    english.put("averagepoints", "Average Points");
    german.put("disclaimer", "Hinweis: Nur zu Informationszwecken und nicht rechtlich bindend");
    english.put("disclaimer", "Disclaimer: Just for informational purposes / not a legal document");
  }
  
  String get(String key) {
    String word = words.get(language).get(key);
    return word == null ? "Undefined" : words.get(language).get(key);
  }
  
  String getUpper(String key) {
    String word = words.get(language).get(key);
    return word == null ? "Undefined" : word.toUpperCase();
  }
} 
