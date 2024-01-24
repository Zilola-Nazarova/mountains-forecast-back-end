# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

admin = User.create(name: 'Tom', role: 'admin');

mountain1 = Mountain.create(
  name: 'Greater Chimgan',
  latitude: 41.4951900,
  longitude: 70.0586718,
  elevation: 3309.6,
);

mountain2 = Mountain.create(
  name: 'Karakush',
  latitude: 41.2477890,
  longitude: 70.3391467,
  elevation: 3864.3,
);

mountain3 = Mountain.create(
  name: 'Babaitag',
  latitude: 41.1549650,
  longitude: 70.2232660,
  elevation: 3555.7,
);