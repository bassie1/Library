use LibraryDB
go
--1) Please give me a list of any expired memberships, along with the phone numbers so I can reach out to those members about renewing their memberships.
select r.MemberName, r.MemberPhoneNumber, r.MembershipLastRenewal
from TheReadingRoom r
where r.MembershipValid = 0
--2) I would like a list of each member's name and how many books they are allowed out at once that I can have for easy reference. 
--   Please format it like this: Member last name, first name: amount of books allowed
select ActiveMembers = concat(r.MemberLastName,', ',r.MemberFirstName,': ', r.NumBooksAllowed)
from TheReadingRoom r
where r.MembershipValid = 1
--3) I'm trying to decide if I should raise the membership prices or not. Can you let me know how popular each membership package is?
select r.MembershipPrice, NumMembers = count(*)
from TheReadingRoom r
group by r.MembershipPrice
order by NumMembers desc