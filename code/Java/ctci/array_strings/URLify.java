// package ...

// import ...

public class URLify {
   // Assume string has sufficient free space at the end
   public static void replaceSpaces(char[] str, int trueLength) {
      int spaceCount = 0, index, i = 0;
      for (i = 0; i < trueLength; i++) {
         if (str[i] == ' ') {
            spaceCount++;
         }
      }


      public static void main (String[] args) {
         String str = "Mr John Smith    ";
         char[] arr = str.toCharArray();
         int trueLength = findLastCharacter(arr) + 1; // careful of off by 1 errors
         // ...
      }
}
