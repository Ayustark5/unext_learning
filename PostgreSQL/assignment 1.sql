create table users(
    userId integer not null primary key,
    first_name text,
    last_name text,
    address text,
    mobile text not null,
    email varchar not null,
    username text not null,
    password text not null);

create table Referral(
    referralId text primary key,
    referral_first_name text,
    referral_last_name text,
    mobile text not null,
    email varchar not null,
    userId integer not null,
    date_of_referral date,
    referral_points integer default 0,
    status text,
    foreign key(userId) references Users(userId)
);

create table Customer(
    customerId integer primary key,
    first_name text,
    last_name text,
    email varchar not null,
    mobile text not null
);

create table Buying_details(
    customerId integer,
    userId integer,
    purchase_date date,
    productName text,
    foreign key(customerId) references Customer(customerId),
    foreign key(userId) references Users(userId)
);

select userId, referral_points/1000 from Referral where userId = 200242;

select userId, referral_points from Referral where userId = 200242;

