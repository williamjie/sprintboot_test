package com.neo.model.repository.primary;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * @author neo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Document(collection = "first_mongo")
public class PrimaryMongoObject {

	@Id
	private String id;

	private String value;
	/*
	public PrimaryMongoObject(String tmpId,String tmpValue){
		if (id != null){
			id = tmpId;
		}

		if (tmpValue != null){
			value = tmpValue;
		}

	}*/

	@Override
	public String toString() {
        return "PrimaryMongoObject{" + "id='" + id + '\'' + ", value='" + value + '\''
				+ '}';
	}
}
