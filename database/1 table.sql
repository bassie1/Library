use LibraryDB
go

drop table if exists TheReadingRoom
go

create table dbo.TheReadingRoom(
	TheReadingRoomId int not null identity primary key,
	MemberFirstName varchar(50) not null constraint ck_TheReadingRoom_member_first_name_cannot_be_blank check(MemberFirstName > ''),
	MemberLastName varchar(50) not null constraint ck_TheReadingRoom_member_last_name_cannot_be_blank check(MemberLastName > ''),
	MemberAddress varchar(100) not null constraint ck_TheReadingRoom_member_address_cannot_be_blank check(MemberAddress > ''),
	MemberPhoneNumber char(12) not null 
		constraint ck_TheReadingRoom_phone_number_must_be_3_numbers_space_3_numbers_space_4_numbers check(MemberPhoneNumber like '[0-9][0-9][0-9] [0-9][0-9][0-9] [0-9][0-9][0-9][0-9]')
		constraint u_TheReadingRoom_MemberPhoneNumber unique,
	MembershipLastRenewal date not null constraint ck_TheReadingRoom_last_renewal_must_be_after_3_years_ago_and_cannot_be_in_future check(MembershipLastRenewal between '20210112' and getdate()),
	MembershipPrice int not null constraint ck_TheReadingRoom_membership_price_must_be_in_50_60_70_80_or_90 check(MembershipPrice in(50,60,70,80,90)),
	NumBooksAllowed as 
		case 
			when datediff(day,MembershipLastRenewal,getdate()) < 365 
			then 
				case MembershipPrice 
					when 50 then 6 
					when 60 then 8 
					when 70 then 10 
					when 80 then 12 
					when 90 then 14 
				end 
			else 0
		end,
	MembershipValid as case when datediff(day,MembershipLastRenewal,getdate()) < 365 then 1 else 0 end
)
go