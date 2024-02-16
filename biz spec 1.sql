/*
Business Spec
The small home-based library that I began in my home 3 years ago, has grown beyond my wildest dreams, and is now too hard for me to upkeep with the simple notebook I've been using until now. 
I would like you to create a database for me to enable my library, The Reading Room, to function as smoothly as possible.

I would like to keep track of each member's transactions at the library which include: Member information-the member name and phone number, the last time the membership was renewed, 
and how many books they are allowed out at once-which depends on the membership fee they paid, as well as the actual transaction: how many books were borrowed in total and how many from each section of the library, 
the date borrowed and the date returned, whether or not the books were returned on time, and if there is any late fee due.

The memberships are priced as follows:
A member is allowed 6 books at $50/year, and with every additional $10, another 2 books are allowed out.
The library includes the following sections:
-Children's books
-Adult Fiction
-Biographies
-Short Stories


The members are allowed to keep the books for 3 weeks at a time, after which if they are not returned, there is a late fee of $5 for every week that they are past due.

Questions:
1. When did The Reading Room open its doors to the public?
   The grand opening was on Jan 12, 2021

2. Is it possible to have a membership for less than 6 books?
   No, the minimum membership price is $50 a year, for 6 books.

3. Is there a maximum amount of books a membership can include?
   Yes, a membership cannot exceed 14 books.

4. Can it ever happen that a member takes out more books than their membership allows?
   This is something that is strictly enforced and does not happen.

5. Do you allow members to borrow books when they owe a late fee?
   I would love to say that I don't allow it, but unfortunately, I can't keep track of everything, so things slip through the cracks and it
   sometimes happens that a member borrows books even when they owe a fee. With a new system in place, hopefully things like that won't happen!

I would like the following reports:
1) Please let me know if there are any expired memberships so I can reach out to those members about renewing their memberships.
2) I'm interested in knowing how popular each section of the library is-from greatest to least, so when I buy new books I'll know which types to buy.
3) In how many transactions did members actually borrow the amount of books they are allowed?
4) I would like a list of all members who owe a late fee, and the amount of money they owe, along with their phone number so I can reach them.

Thank you in advance for enabling my library to run as smoothly as possible!

Sample data:
Name, phone #, last renewal, price of mmbrshp, amount of books, which section, date borrowed, returned
Chaya Rubin, 845 674 3412, 02/11/24, $60, 6, 6 children's books, 1/28/24, 2/11/24
Leah Levine, 845 579 2469, 03/15/22, $70, 8, 4 children's books, 2 adult fiction,  2 biographies, 1/28/24
Krasner Family, 917 608 9097, 12/23/23, $70, 10, 2 children's books, 8 short stories, 1/28/24, 2/11/24
Devora Feldman, 845 222 9709, 10/01/23, $90, 6, 6 adult fiction, 1/7/24, 1/14/24
Gitty Steiner, 347 998 0597, 11/09/23, $50, 6, 1 children's books, 3 adult fiction, 1 short stories, 1 biographies, 12/24/23, 2/4/24
Chaya Rubin, 845 674 3412, 02/11/24, $60, 10, 6 children's books, 3 short stories, 1 biographies, 1/7/24, 1/28/24
Basya Zwiebel, 845 986 3800, 05/09/22, $60, 8, 5 children's books, 2 adult fiction, 1 short stories, 1/28/24, 2/18/24
Devorah Busrsztyn, 845 525 4221, 07/16/23, $90, 14, 10 children's books, 3 adult fiction, 1 short stories, 1/21/24, 2/11/24
Chana Wilhelm, 845 210 1053, 02/06/23, $80, 10, 3 children's books, 5 adult fiction, 2 biographies, 12/3/23, 1/7/24
Glazer Family, 848 765 1725, 01/01/23, $90, 8, 7 children's books, 1 short stories, 1/28/24
Liba Strauss, 845 825 1346, 08/18/23, $50, 6, 6 children's books, 2/4/24
Hindy Grun, 845 274 8484, 02/26/23, $70, 10, 7 children's books, 3 short stories, 1/21/24, 2/4/24
Bracha Thumin, 845 287 4423, 09/13/22, $80, 11, 5 children's books, 3 adult fiction, 3 short stories, 1/28/24, 2/4/24
Shaindy Glassman, 845 210 1266, 05/14/23, $60, 7, 6 children's books, 1 biographies, 1/14/24, 2/11/24
Glazer Family, 848 765 1725, 01/01/23, $90, 13, 11 children's books, 2 short stories, 12/17/23, 12/31/23
Chava Unger, 845 287 3585, 12/31/23, $50, 6, 3 children's books, 1 adult fiction, 1 biographies, 1 short stories, 1/28/24, 2/11/24
Miriam Wein, 845 986 0099, 11/21/22, $80, 12, 6 children's books, 6 adult fiction, 1/28/24
Miri Kerem, 845 298 4945, 05/30/23, $60, 8, 1 children's books, 4 adult fiction, 2 short stories, 1 biographies, 12/31/23, 1/21/24
Rivka Brand, 845 448 8595, 10/02/22, $70, 10, 2 children's books, 6 adult fiction, 2 biographies, 10/30/22, 11/27/22
Libby Gelb, 845 240 2734, 09/19/21, $80, 11, 6 children's books, 5 short stories, 10/3/21, 10/31/21
Malka Schur, 845 287 3441, 03/04/23, $90, 14, 10 children's books, 4 biographies,  1/21/24
Hindy Grun, 845 274 8484, 02/26/23, $70, 6, 2 children's books, 1 adult fiction, 3 biographies, 2/4/24, 2/11/24
Chana Wilhelm, 845 210 1053, 02/06/23, $80, 8, 5 children's books, 3 adult fiction, 2 biographies, 1/7/24, 1/21/24
Chaya Rubin, 845 674 3412, 02/11/24, $70, 8, 4 children's books, 2 short stories, 2 biographies, 12/17/23, 1/7/24
Basya Zwiebel, 845 986 3800, 05/09/22, $60, 8, 1 children's books, 3 adult fiction, 2 short stories, 2 biographies, 12/24/23, 1/21/24
Hindy Grun, 845 274 8484, 02/26/23, $70, 8, 3 children's books, 2 adult fiction, 3 short stories, 12/31/23, 1/14/24
Shaindy Glassman, 845 210 1266, 05/14/23, $60, 6, 4 children's books, 1 adult fiction, 1 biographies, 12/3/23, 12/24/23
*/