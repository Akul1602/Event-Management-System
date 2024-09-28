package com.eventmanagement;

import java.util.ArrayList;
import java.util.List;

class Event {
    private String name;
    private String date;
    private String location;
    private List<String> attendees = new ArrayList<>();

    public Event(String name, String date, String location) {
        this.name = name;
        this.date = date;
        this.location = location;
    }

    public String getName() {
        return name;
    }

    public void addAttendee(String attendee) {
        attendees.add(attendee);
    }

    public List<String> getAttendees() {
        return attendees;
    }

    @Override
    public String toString() {
        return "Event: " + name + ", Date: " + date + ", Location: " + location;
    }
}
