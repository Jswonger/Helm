class OnboardData {
  static Map<String,Object> onboardMap = new Map();
  
  static void addUpdateData(String key, Object value) {
    onboardMap.update(key, (prevValue) => value, ifAbsent: () => value);
  }

  static void printData() {
    print(onboardMap);
  }
}