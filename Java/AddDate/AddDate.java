import java.time.LocalDate;

public class AddDate {
  public static void main(String[] args) {
    // Attempting date via command line arguements
    // LocalDate dateObj = LocalDate.of(args[1], args[2], args[3]);

    // Temp: Brute force..
    LocalDate dateObj = LocalDate.of(2023, 6, 22);
    
    System.out.println("\nDate Input: " + dateObj + "\n");

    // add 28 dayas to current date
    // available *on* the 28 day, so exclusive (off by one)
    LocalDate twentyEightDays = dateObj.plusDays(28 - 1);
    System.out.println("28 Days past Input Date: " + twentyEightDays + "\n");
  }
}
