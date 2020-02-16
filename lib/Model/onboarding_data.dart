class OnboardData {
  static Map<String,Object> onboardMap = new Map();
  
  static void addUpdateData(String key, Object value) {
    onboardMap.update(key, (prevValue) => value, ifAbsent: () => value);
  }

  static void submitData() {
    // Send data to firebase using firestore_crud.dart
    // FirestoreCRUD.createData('User', userID.toString(), onboardMap);
  }

  static void printData() {
    print(onboardMap);
  }
}