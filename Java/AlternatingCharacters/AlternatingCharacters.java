import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class AlternatingCharacters {
   public static void main(String[] args) {
      String cases = System.console().readLine();
      int c = Integer.parseInt(cases);

      for (int i = 1; i <= c; i++) {
         String in = System.console().readLine();
         String[] input = in.split("");

         for (int j = 1; j <= input.length; j++) {
            System.out.println("input: " + input[1]);
            System.out.println("test: " + i);
         }
      }
   }
}
