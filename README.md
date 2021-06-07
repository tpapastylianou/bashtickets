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
    ├── milestones : This is where all the raw milestone files are stored.
    │   │            Like tickets, milestone files are completely editable if
    │   │            necessary; however, use new_milestone to create new
    │   │            milestones, as this ensures the correct templates
    │   │            are used. Milestones do not need to be closed explicitly: a
    │   │            milestone is simply considered 'complete' if there are no
    │   │            more open tickets left.
    │   │
    │   ├── 000.milestone : This serves as the template for creating new
    │   │                   milestones. DO NOT edit/remove.
    │   │
    │   ├── 001.milestone : Example active milestone.    Feel free to edit/remove.
    │   └── 002.milestone : Example completed milestone. Feel free to edit/remove.
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
    ├── show_open_ticket_summaries_by_priority : }
    │
    │
    ├── new_milestone : Script to create new milestone interactively. Takes no
    │                   arguments.
    │
    ├── show_active_milestones : Lists milestones with open tickets still left.
    └── show_completed_milestones : Lists milestones with no open tickets left.


Note: the scripts may need to be made executable on your system first.
E.g. `chmod +x ./new_ticket`

## How to create/edit tickets (and milestones):

Simply use the above functions to query or create/close tickets or milestones in
an interactive manner.

To view the tickets / milestones themselves, simply open them as normal,
editable textfiles inside the `tickets` / `milestones` folders respectively.

To add tickets to milestones, simply add the ticket name (e.g. 001.ticket)
manually under the appropriate section of the respective milestone.

Similarly, link tickets to specific milestones by adding the milestone number in
the appropriate section of the ticket.


## How to query tickets / milestones

Ticket and milestone files are designed to have consistent headers, making them
extremely straightforward to use with the `grep` command.  This allows you to
perform simple queries easily, e.g.:

    grep "Milestone: 001" tickets/*

to list all tickets under milestone 001.

For more advanced queries, see provided query scripts in the root directory.
