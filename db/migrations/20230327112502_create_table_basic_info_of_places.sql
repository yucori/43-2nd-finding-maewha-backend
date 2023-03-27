-- migrate:up
CREATE TABLE basic_info_of_places(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	place_id INT NOT NULL,
	basic_info_id INT NOT NULL,
	content VARCHAR(2000) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
	CONSTRAINT basic_info_of_places_place_id_pk FOREIGN KEY (place_id) REFERENCES places (id),
	CONSTRAINT basic_info_of_places_basic_info_id_pk FOREIGN KEY(basic_info_id) REFERENCES basic_info (id)
);

-- migrate:down
DROP TABLE basic_info_of_places;
