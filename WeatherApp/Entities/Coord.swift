

import Foundation
import ObjectMapper

struct Coord : Mappable {
	var lat : Double?
	var lon : Double?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		lat <- map["lat"]
		lon <- map["lon"]
	}

}
