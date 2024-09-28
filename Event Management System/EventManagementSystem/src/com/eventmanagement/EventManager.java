package com.eventmanagement;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

class EventManager {
    private Map<String, Event> events = new HashMap<>();
    private Scanner scanner = new Scanner(System.in);

    public void createEvent(String name, String date, String location) {
        Event event = new Event(name, date, location);
        events.put(name, event);
        System.out.println("Event created successfully.");
    }

    public void listEvents() {
        if (events.isEmpty()) {
            System.out.println("No events found.");
        } else {
            for (Event event : events.values()) {
                System.out.println(event);
            }
        }
    }

    public void deleteEvent() {
        System.out.print("Enter event name to delete: ");
        String name = scanner.nextLine();
        if (events.remove(name) != null) {
            System.out.println("Event deleted successfully.");
        } else {
            System.out.println("Event not found.");
        }
    }

    public void sendReminder() {
        System.out.print("Enter event name to send a reminder for: ");
        String name = scanner.nextLine();
        Event event = events.get(name);
        if (event != null) {
            System.out.println("Reminder sent for " + event);
        } else {
            System.out.println("Event not found.");
        }
    }

    public void viewAttendees() {
        System.out.print("Enter event name to view attendees: ");
        String name = scanner.nextLine();
        Event event = events.get(name);
        if (event != null) {
            List<String> attendees = event.getAttendees();
            if (attendees.isEmpty()) {
                System.out.println("No attendees for this event.");
            } else {
                System.out.println("Attendees for " + event.getName() + ":");
                for (String attendee : attendees) {
                    System.out.println("- " + attendee);
                }
            }
        } else {
            System.out.println("Event not found.");
        }
    }

    public void addAttendee() {
        System.out.print("Enter event name to add an attendee: ");
        String name = scanner.nextLine();
        Event event = events.get(name);
        if (event != null) {
            System.out.print("Enter attendee name: ");
            String attendee = scanner.nextLine();
            event.addAttendee(attendee);
            System.out.println("Attendee added successfully.");
        } else {
            System.out.println("Event not found.");
        }
    }
}
