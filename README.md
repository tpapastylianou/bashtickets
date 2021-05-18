# bashtickets
Simple scripts to create and manage simple tickets in your bash terminal

The root directory contains the following structure:

    ├── README.md : This file
    │
    ├── tickets : This is where all the raw ticket files will be stored. All
    │   │         tickets are completely editable if necessary. However, use
    │   │         new_ticket and close_ticket_with_comment to create and close
    │   │         tickets respectively, as this ensures the correct templates
    │   │         are used.
    │   │
    │   ├── 000.ticket : This serves as the ticket template for creating new
    │   │                tickets. DO NOT edit/remove.
    │   │
    │   ├── 001.ticket : Example open ticket.   Feel free to edit/remove.
    │   └── 002.ticket : Example closed ticket. Feel free to edit/remove.
    │
    │
    ├── close_ticket_with_comment : Script to close tickets interactively.
    │                               Expects a ticket as an argument,
    │                               e.g. '002.ticket' or simply '002'
    │
    ├── new_ticket : Script to create new ticket interactively. Takes no
    │                arguments.
    │
    ├── show_all_ticket_summaries              : }
    ├── show_closed_ticket_resolutions         : }
    ├── show_closed_ticket_summaries           : } scripts to perform various
    ├── show_open_ticket_summaries             : } queries on existing tickets.
    ├── show_open_ticket_summaries_by_owner    : }
    └── show_open_ticket_summaries_by_priority : }

Note: the scripts may need to be made executable on your system first.
E.g. `chmod +x ./new_ticket`

## How to use:

Simply use the above functions to query or create/close tickets in an
interactive manner.

To view the tickets themselves, simply open them as normal, editable textfiles
inside the `tickets` folder. 
