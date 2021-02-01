
import Foundation
import ObjectMapper

struct CityList : Mappable {
	var dt : Int?
	var main : Main?
	var weather : [Weather]?
	var clouds : Clouds?
	var wind : Wind?
	var visibility : Int?
	var pop : Int?
	var sys : Sys?
	var dt_txt : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		dt <- map["dt"]
		main <- map["main"]
		weather <- map["weather"]
		clouds <- map["clouds"]
		wind <- map["wind"]
		visibility <- map["visibility"]
		pop <- map["pop"]
		sys <- map["sys"]
		dt_txt <- map["dt_txt"]
	}

}
