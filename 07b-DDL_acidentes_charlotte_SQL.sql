USE projfinal;

CREATE TABLE IF NOT EXISTS acidentes_charlotte (
	_id text,
    event_no text,
    datetime_add text,
    division text,
    address text,
    event_type text,
    event_desc text,
    x_coord double precision,
    y_coord double precision,
    latitude double precision,
    longitude double precision,
    weatherInfo text
);