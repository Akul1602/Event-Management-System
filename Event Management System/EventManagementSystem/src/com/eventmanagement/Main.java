package com.eventmanagement;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        EventManager eventManager = new EventManager();
        Scanner scanner = new Scanner(System.in);

        while (true) {
            System.out.println("\nEvent Management System");
            System.out.println("1. Create Event");
            System.out.println("2. List Events");
            System.out.println("3. Delete Event");
            System.out.println("4. Send Reminder");
            System.out.println("5. View Attendees");
            System.out.println("6. Add Attendee");
            System.out.println("7. Exit");
            System.out.print("Choose an option: ");
            int choice = scanner.nextInt();
            scanner.nextLine();  // Consume newline left-over

            switch (choice) {
                case 1:
                    System.out.print("Enter Event Name: ");
                    String eventName = scanner.nextLine();
                    System.out.print("Enter Event Date (YYYY-MM-DD): ");
                    String eventDate = scanner.nextLine();
                    System.out.print("Enter Event Location: ");
                    String location = scanner.nextLine();

                    eventManager.createEvent(eventName, eventDate, location);
                    break;

                case 2:
                    eventManager.listEvents();
                    break;

                case 3:
                    eventManager.deleteEvent();
                    break;

                case 4:
                    eventManager.sendReminder();
                    break;

                case 5:
                    eventManager.viewAttendees();
                    break;

                case 6:
                    eventManager.addAttendee();
                    break;

                case 7:
                    System.out.println("Exiting...");
                    scanner.close();
                    System.exit(0);

                default:
                    System.out.println("Invalid choice. Please try again.");
            }
        }
    }
}
