
import Foundation
import ObjectMapper

struct Sys : Mappable {
	var pod : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		pod <- map["pod"]
	}

}
