create table project_status(
    id integer primary key autoincrement,
    name varchar(100)
);

create table task_status(
    id integer primary key autoincrement,
    name varchar(100)
);

create table emploee(
    id integer primary key autoincrement,
    name varchar(100) not null,
    surname varchar(100) not null,
    salary float not null
);

create table position(
    id integer primary key autoincrement,
    name varchar(100)
);

create table project (
    id integer primary key autoincrement,
	name varchar(100) not null,
   	date_of_creation date not null,
	status_id integer not null,
	date_of_closure date,
    FOREIGN KEY(status_id) REFERENCES project_status(id)
);

create table task(
    id integer primary key autoincrement,
    emploee_id integer not null, 
    deadline date not null,
    status_id integer not null,
    date_status_change date not null,
    emploee_status_change integer not null,
    FOREIGN KEY(emploee_id) REFERENCES emploee(id),
    FOREIGN KEY(status_id) REFERENCES task_status(id)
);

create table projects_info(
    id integer primary key autoincrement,
    emploee_id integer not null,
    project_id integer unique not null ,
    task_id integer not null,
    position_id integer not null,
    FOREIGN KEY(emploee_id) REFERENCES emploee(id),
    FOREIGN KEY(project_id) REFERENCES project(id),
    FOREIGN KEY(position_id) REFERENCES position(id),
    FOREIGN KEY(task_id) REFERENCES task(id)
);