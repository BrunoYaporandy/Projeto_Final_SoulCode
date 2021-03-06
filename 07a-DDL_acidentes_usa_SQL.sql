USE projfinal;

CREATE TABLE IF NOT EXISTS acidentesusa (
	ID text,
	Severity bigint,
    Start_Time text,
    End_Time text,
    Start_Lat double precision,
    Start_Lng double precision,
    End_Lat double precision,
    End_Lng double precision,
    Distance  text,
    Description text,
    Number double precision,
    Street text,
    Side text,
    City text,
    County text,
    State text,
    Zipcode text,
    Country text,
    Timezone text,
    Airport_Code text,
    Weather_Timestamp text,
    Temperature text,
    Wind_Chill text,
    Humidity text,
    Pressure text,
    Visibility text,
    Wind_Direction text,
    Wind_Speed text,
    Precipitation double precision,
    Weather_Condition text,
    Amenity boolean,
    Bump boolean,
    Crossing boolean,
    Give_Way boolean,
    Junction boolean,
    No_Exit boolean,
    Railway boolean,
    Roundabout boolean,
    Station boolean,
    Stop boolean,
    Traffic_Calming boolean,
    Traffic_Signal boolean,
    Turning_Loop boolean,
    Sunrise_Sunset text,
    Civil_Twilight text,
    Nautical_Twilight text,
    Astronomical_Twilight text
);