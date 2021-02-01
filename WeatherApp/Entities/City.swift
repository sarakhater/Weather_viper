

import Foundation
import ObjectMapper

struct City : Mappable {
	var id : Int?
	var name : String?
	var coord : Coord?
	var country : String?
	var population : Int?
	var timezone : Int?
	var sunrise : Int?
	var sunset : Int?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		id <- map["id"]
		name <- map["name"]
		coord <- map["coord"]
		country <- map["country"]
		population <- map["population"]
		timezone <- map["timezone"]
		sunrise <- map["sunrise"]
		sunset <- map["sunset"]
	}

}
