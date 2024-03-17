use LibraryDB
go

delete TheReadingRoom
go

insert TheReadingRoom(MemberFirstName,MemberLastName,MemberAddress,MemberPhoneNumber,MembershipLastRenewal,MembershipPrice)
select 'Chaya', 'Rubin', '23 Ridgewood Dr.', '845 674 3412', '02/11/24', 60
union select 'Leah', 'Levine', '354 Toper Ln.', '845 579 2469', '03/15/22', 70
union select 'Krasner', 'Family', '126 Eders Ct.', '917 608 9097', '12/23/23', 70
union select 'Devora', 'Feldman', '5 Lakeside Blvd.', '845 222 9709', '10/01/23', 90
union select 'Gitty', 'Steiner', '64 Chambers Ln.', '347 998 0597', '11/09/23', 50
union select 'Leah', 'Rubinstein', '3 Lakeside Blvd.', '845 256 3269', '02/16/22', 60
union select 'Basya', 'Zwiebel', '86 Inwend Dr.', '845 986 3800', '05/09/22', 60
union select 'Devorah', 'Busrsztyn', '7 Coster Ln.', '845 525 4221', '07/16/23', 90
union select 'Chana', 'Wilhelm', '23 Chanters Rd.', '845 210 1053', '02/06/23', 80
union select 'Glazer', 'Family', '135 Rockwell Dr.', '848 765 1725', '01/01/23', 90
union select 'Liba', 'Strauss', '13 Greens Dr.', '845 825 1346', '08/18/23', 50
union select 'Hindy', 'Grun', '73 Kopler Ave.', '845 274 8484', '02/26/23', 70
union select 'Bracha', 'Thumin', '78 Chambers Ln.', '845 287 4423', '09/13/22', 80
union select 'Shaindy', 'Glassman', '28 Lomond Ave.', '845 210 1266', '05/14/23', 60
union select 'Chava', 'Unger', '7 Jarrimer Ln.', '845 287 3585', '12/31/23', 50
union select 'Miriam', 'Wein', '89 Grams Ct.', '845 986 0099', '11/21/22', 80
union select 'Miri', 'Kerem', '2 Dikers Dr.', '845 298 4945', '05/30/23', 60
union select 'Rivka', 'Brand', '34 Lakeside Blvd.', '845 448 8595', '10/02/22', 70
union select 'Libby', 'Gelb', '30 Vimmler Ln.', '845 240 2734', '09/19/21', 80
union select 'Malka', 'Schur', '132 Guds Ave.', '845 287 3441', '03/04/23', 90
union select 'Penina', 'Astor', '34 Glen Ave.', '347 982 2318', '06/03/22', 80