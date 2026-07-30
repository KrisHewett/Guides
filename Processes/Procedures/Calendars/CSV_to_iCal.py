import csv
import os

def csv_to_ics(csv_file, output_folder):
    if not os.path.exists(output_folder):
        os.makedirs(output_folder)

    with open(csv_file, newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            uid = row.get('UID', 'event-' + str(hash(row.get('SUMMARY', 'unknown'))))
            filename = os.path.join(output_folder, f"{uid}.ics")

            with open(filename, 'w', encoding='utf-8') as ics:
                ics.write("BEGIN:VCALENDAR\n")
                ics.write("VERSION:2.0\n")
                ics.write("PRODID:-//Your Company//Calendar Export//EN\n")
                ics.write("BEGIN:VEVENT\n")
                ics.write(f"UID:{uid}\n")
                if row.get('DTSTAMP'): ics.write(f"DTSTAMP:{row['DTSTAMP']}\n")
                if row.get('DTSTART'): ics.write(f"DTSTART:{row['DTSTART']}\n")
                if row.get('DTEND'): ics.write(f"DTEND:{row['DTEND']}\n")
                if row.get('DURATION'): ics.write(f"DURATION:{row['DURATION']}\n")

                # Optional fields
                for field in ['SUMMARY','DESCRIPTION','LOCATION','STATUS','CLASS','TRANSP','PRIORITY','SEQUENCE','RRULE','EXDATE','RDATE','ATTENDEE','ORGANIZER','CATEGORIES','CREATED','LAST-MODIFIED','URL','ATTACH']:
                    value = row.get(field)
                    if value:
                        ics.write(f"{field}:{value}\n")

                ics.write("END:VEVENT\n")
                ics.write("END:VCALENDAR\n")

            print(f"Created: {filename}")

# Example usage:
# csv_to_ics('merged_calendar.csv', 'ics_events')