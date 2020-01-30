% MUTT(eg) | Mutt notes

MUTT
====

**mutt** — my preferred mail client

SYNOPSIS
========

| **mutt**

DESCRIPTION
===========

Mutt is the mail user agent of the masses of people who love the terminal and
hate guis. It's curses at its core, and utterly delightful.

In this documentation, we note the common flags and search patterns that one
always forgets.


MESSAGE STATUS FLAGS
====================

Next to messages, mutt will insert status flags. These have the following
meanings.


Flag  Description
----  -----------
D     message is deleted (is marked for deletion)
d     message has attachments marked for deletion
K     contains a PGP public key
N     message is new
O     message is old
P     message is PGP encrypted
r     message has been replied to
S     message is signed, and the signature is successfully verified
s     message is signed
!     message is flagged
`*`   message is tagged
n     thread contains new messages (only if collapsed)
o     thread contains old messages (only if collapsed)


SEARCH PATTERNS
===============

When searching (or when limiting, which is therefore super useful), mutt allows
one to use many patterns. These patterns generally take the form of `~X` where
`X` is some letter with meaning, possibly expecting some additional argument
after it.

These patterns are described in the manual. The appropriate description is
below.

Pattern modifier Description
---------------- -----------
~A               all messages
~b EXPR          messages which contain EXPR in the message body
=b STRING        If IMAP is enabled, like ~b but searches for STRING on the server, rather than downloading each message and searching it locally.
~B EXPR          messages which contain EXPR in the whole message
=B STRING        If IMAP is enabled, like ~B but searches for STRING on the server, rather than downloading each message and searching it locally.
~c EXPR          messages carbon-copied to EXPR
%c GROUP         messages carbon-copied to any member of GROUP
~C EXPR          messages either to: or cc: EXPR
%C GROUP         messages either to: or cc: to any member of GROUP
~d [MIN]-[MAX]   messages with “date-sent” in a Date range
~D               deleted messages
~e EXPR          messages which contains EXPR in the “Sender” field
%e GROUP         messages which contain a member of GROUP in the “Sender” field
~E               expired messages
~F               flagged messages
~f EXPR          messages originating from EXPR
%f GROUP         messages originating from any member of GROUP
~g               cryptographically signed messages
~G               cryptographically encrypted messages
~h EXPR          messages which contain EXPR in the message header
=h STRING        If IMAP is enabled, like ~h but searches for STRING on the server, rather than downloading each message and searching it locally; STRING must be of the form “header: substring”.
~H EXPR          messages with a spam attribute matching EXPR
~i EXPR          messages which match EXPR in the “Message-ID” field
~k               messages which contain PGP key material
~L EXPR          messages either originated or received by EXPR
%L GROUP         message either originated or received by any member of GROUP
~l               messages addressed to a known mailing list
~m [MIN]-[MAX]   messages in the range MIN to MAX
~M EXPR          messages which contain a mime Content-Type matching EXPR
~n [MIN]-[MAX]   messages with a score in the range MIN to MAX
~N               new messages
~O               old messages
~p               messages addressed to you (consults $from, alternates, and local account/hostname information)
~P               messages from you (consults $from, alternates, and local account/hostname information)
~Q               messages which have been replied to
~r [MIN]-[MAX]   messages with “date-received” in a Date range
~R               read messages
~s EXPR          messages having EXPR in the “Subject” field.
~S               superseded messages
~t EXPR          messages addressed to EXPR
~T               tagged messages
~u               messages addressed to a subscribed mailing list
~U               unread messages
~v               messages part of a collapsed thread.
~V               cryptographically verified messages
~x EXPR          messages which contain EXPR in the “References” or “In-Reply-To” field
~X [MIN]-[MAX]   messages with MIN to MAX attachments
~y EXPR          messages which contain EXPR in the “X-Label” field
~z [MIN]-[MAX]   messages with a size in the range MIN to MAX
~=               duplicated messages (see $duplicate_threads)
~$               unreferenced messages (requires threaded view)
~(PATTERN)       messages in threads containing messages matching PATTERN, e.g. all threads containing messages from you: ~(~P)
`~<(PATTERN)`    messages whose immediate parent matches PATTERN, e.g. replies to your messages: `~<(~P)`
`~>(PATTERN)`    messages having an immediate child matching PATTERN, e.g. messages you replied to: `~>(~P)`

Where EXPR is a regular expression, and GROUP is an address group.

Special attention has to be paid when using regular expressions inside of
patterns. Specifically, Mutt's parser for these patterns will strip one level of
backslash (“\”), which is normally used for quoting. If it is your intention to
use a backslash in the regular expression, you will need to use two backslashes
instead (“\\”).

You can force Mutt to treat EXPR as a simple string instead of a regular
expression by using = instead of ~ in the pattern name. For example, `=b *.*` will
find all messages that contain the literal string `“*.*”`. Simple string matches
are less powerful than regular expressions but can be considerably faster.

For IMAP folders, string matches =b, =B, and =h will be performed on the server
instead of by fetching every message. IMAP treats =h specially: it must be of
the form “header: substring” and will not partially match header names. The
substring part may be omitted if you simply wish to find messages containing a
particular header without regard to its value.

Patterns matching lists of addresses (notably c, C, p, P and t) match if there
is at least one match in the whole list. If you want to make sure that all
elements of that list match, you need to prefix your pattern with “^”. This
example matches all mails which only has recipients from Germany.



MAN EG AUTHOR
=============

David Lowry-Duda <david@lowryduda.com>

SEE ALSO
========

**mutt(1)**, the mutt manual
