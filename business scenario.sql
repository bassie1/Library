/*
Business Spec
The small home-based library that I began in my home 3 years ago, has grown beyond my wildest dreams, and is now too hard for me to upkeep with the simple notebook I've been using until now. 
I would like you to create a database for me to enable my library, The Reading Room, to function as smoothly as possible.

I would like to keep track of each member's transactions at the library which include: Member information-the member name, address and phone number, the last time the membership was renewed, 
and how many books they are allowed out at once-which depends on the membership fee they paid. I would also like to include a column 

The memberships are priced as follows:
A member is allowed 6 books at $50/year, and with every additional $10, another 2 books are allowed out.


Questions:
1. When did The Reading Room open its doors to the public?
   The grand opening was on Jan 12, 2021

2. Is it possible to have a membership for less than 6 books?
   No, the minimum membership price is $50 a year, for 6 books.

3. Is there a maximum amount of books a membership can include?
   Yes, a membership cannot exceed 14 books.

I would like the following reports:
1) Please give me a list of any expired memberships, along with the phone numbers so I can reach out to those members about renewing their memberships.
2) I would like a list of each member's name and how many books they are allowed out at once that I can have for easy reference. 
   Please format it like this: Member last name, first name: amount of books allowed
3) I'm trying to decide if I should raise the membership prices or not. Can you let me know how popular each membership package is?

Thank you in advance for enabling my library to run as smoothly as possible!

Sample data:
Name, address, phone #, last renewal, price of mmbrshp
Chaya Rubin, 23 Ridgewood Dr., 845 674 3412, 02/11/24, $60
Leah Levine, 354 Toper Ln., 845 579 2469, 03/15/22, $70
Krasner Family, 126 Eders Ct., 917 608 9097, 12/23/23, $70
Devora Feldman, 5 Lakeside Blvd., 845 222 9709, 10/01/23, $90
Gitty Steiner, 64 Chambers Ln., 347 998 0597, 11/09/23, $50
Leah Rubinstein, 3 Lakeside Blvd., 845 256 3269, 02/16/22, $60
Basya Zwiebel, 86 Inwend Dr., 845 986 3800, 05/09/22, $60
Devorah Busrsztyn, 7 Coster Ln., 845 525 4221, 07/16/23, $90
Chana Wilhelm, 23 Chanters Rd., 845 210 1053, 02/06/23, $80
Glazer Family, 135 Rockwell Dr., 848 765 1725, 01/01/23, $90
Liba Strauss, 13 Greens Dr., 845 825 1346, 08/18/23, $50
Hindy Grun, 73 Kopler Ave., 845 274 8484, 02/26/23, $70
Bracha Thumin, 78 Chambers Ln., 845 287 4423, 09/13/22, $80
Shaindy Glassman, 28 Lomond Ave., 845 210 1266, 05/14/23, $60
Chava Unger, 7 Jarrimer Ln., 845 287 3585, 12/31/23, $50
Miriam Wein, 89 Grams Ct., 845 986 0099, 11/21/22, $80
Miri Kerem, 2 Dikers Dr., 845 298 4945, 05/30/23, $60
Rivka Brand, 34 Lakeside Blvd., 845 448 8595, 10/02/22, $70
Libby Gelb, 30 Vimmler Ln., 845 240 2734, 09/19/21, $80
Malka Schur, 132 Guds Ave., 845 287 3441, 03/04/23, $90
Penina Astor, 34 Glen Ave., 347 982 2318, 06/03/22, $80