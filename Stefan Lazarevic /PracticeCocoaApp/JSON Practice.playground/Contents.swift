import UIKit

var str = "Hello, playground"
class Aisle: NSObject, Codable
{
    var name:String = ""
    var shelves:[Shelf] = [Shelf]()
}
class Shelf: NSObject, Codable
{
    var name:String = ""
    var product:[Product] = [Product]()
}
class Product: NSObject, Codable
{
    var name:String = ""
    var points:Int = 0
    var productDescription: String = ""
    var price:Double = 0.0
}
class Supermarket: NSObject, Codable
{
    var name: String    = ""
    var address:String  = ""
    var phone:String    = ""
    var aisles:[Aisle]  = [Aisle]()
}


let product = Product()
product.name = "Apple iPad Pro"
product.points = 100
product.productDescription = "iPad Gold, 256 GB, 10.5 Inch"
product.price = 850
//And put it into a shelf
let shelf = Shelf()
shelf.name = "Electronics"
shelf.product.append(product)
//Assigned to particular aisle
let aisle = Aisle()
aisle.name = "New Arrivals"
aisle.shelves.append(shelf)
//In some supermarket
let superMarket = Supermarket()
superMarket.name = "Wallmart"
superMarket.phone = "9999999999"
superMarket.address = "Melville, NY"
superMarket.aisles.append(aisle)

let encodedData = try? JSONEncoder().encode(superMarket)
if let encodedObjectJsonString = String(data: encodedData!, encoding: .utf8)
{
    print(encodedObjectJsonString)
}


