# binding.pry
json.array! @shops do |shop|
json.id shop.id
json.name shop.name
json.genre shop.genre
json.address shop.address
json.holiday shop.holiday
json.japanese_staff shop.japanese_staff
json.open_hours shop.open_hours
json.close_hours shop.close_hours
json.area_id shop.area_id
json.images shop.images
end
