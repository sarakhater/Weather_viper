
import Foundation
import ObjectMapper

struct Base : Mappable {
	var cod : String?
	var message : Int?
	var cnt : Int?
	var list : [List]?
	var city : City?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		cod <- map["cod"]
		message <- map["message"]
		cnt <- map["cnt"]
		list <- map["list"]
		city <- map["city"]
	}

}
