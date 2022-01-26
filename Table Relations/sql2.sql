SELECT v.driver_id, v.vehicle_type,
    concat_ws(' ',first_name, last_name) AS driver_name
    FROM campers as c 
    join vehicles as v ON v.driver_id= c.id
    