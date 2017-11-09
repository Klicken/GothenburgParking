require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://data.goteborg.se/ParkingService/v1.3/PrivateParkings/1efb5456-ceb5-40f8-a230-9644d0b977c6"
doc = Nokogiri::HTML(open(url).read)
doc.css("privateparking").each do |item|
    name = item.css("name").text
    owner = item.css("owner").text
    parkingspaces = item.css("parkingspaces").text
    parkingcost = item.css("parkingcost").text
    currentparkingcost = item.css("currentparkingcost").text
    lat = item.css("lat").text
    long = item.css("long").text
    PrivateParking.create(name: name, owner: owner, parkingspaces: parkingspaces, parkingcost: parkingcost, currentparkingcost: , lat: lat, long: long)
end
