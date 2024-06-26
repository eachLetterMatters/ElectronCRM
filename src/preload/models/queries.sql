CREATE TABLE clients (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL,
	phone_number TEXT,
	www TEXT,
	fb TEXT,
	address TEXT,
	is_active INTEGER DEFAULT (1) NOT NULL,
	is_commercial INTEGER DEFAULT (1) NOT NULL,
	description TEXT
);

CREATE TABLE persons (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	surname TEXT,
	phone_number TEXT,
	email TEXT,
	client_id INTEGER,
	FOREIGN KEY (client_id) REFERENCES clients(id)
);

CREATE TABLE quicknotes (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	content TEXT NOT NULL
);

CREATE TABLE actions (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	category TEXT NOT NULL,
	date TEXT NOT NULL,
	comment TEXT,
	client_id INTEGER,
	FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE
);

CREATE TABLE ratings (
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	score INTEGER NOT NULL,
	"year" INTEGER NOT NULL,
	client_id INTEGER,
	FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE
);