create table reviews
(
    id            int primary key auto_increment,
    restaurant_id int not null,
    review        varchar(255),
    rating        int not null check (rating <= 5 and rating > 0),
    constraint foreign key (restaurant_id) references restaurants (id) on delete cascade
);