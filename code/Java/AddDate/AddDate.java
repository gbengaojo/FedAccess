import java.time.LocalDate;

public class AddDate {
  public static void main(String[] args) {
    // Attempting date via command line arguements
    // LocalDate dateObj = LocalDate.of(args[1], args[2], args[3]);

    // Temp: Brute force..
    int year = 2023;
    int month = 8;
    int day = 6;
    LocalDate dateObj = LocalDate.of(year, month, day);
    
    System.out.println("\nDate Input: " + dateObj + "\n");

    // add n days to current date
    // use 29 days for pmp (should be 28, but seems to be off by 1 depending on
    // who knows what?
    int days = 29;
    LocalDate targetDate = dateObj.plusDays(days);
    System.out.println(days + " Days past Input Date: " + targetDate + "\n");
  }
}
