

import Foundation
import ObjectMapper

struct Main : Mappable {
	var temp : Double?
	var feels_like : Double?
	var temp_min : Double?
	var temp_max : Double?
	var pressure : Int?
	var sea_level : Int?
	var grnd_level : Int?
	var humidity : Int?
	var temp_kf : Double?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		temp <- map["temp"]
		feels_like <- map["feels_like"]
		temp_min <- map["temp_min"]
		temp_max <- map["temp_max"]
		pressure <- map["pressure"]
		sea_level <- map["sea_level"]
		grnd_level <- map["grnd_level"]
		humidity <- map["humidity"]
		temp_kf <- map["temp_kf"]
	}

}
