# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.destroy_all 
User.destroy_all 
City.destroy_all 

user_photos = [https://ca.slack-edge.com/T02MD9XTF-U0185TA4UNR-f0bc51457b29-512, 
    https://ca.slack-edge.com/T02MD9XTF-U018KT73BK3-e5fcb27689d7-512,
    https://ca.slack-edge.com/T02MD9XTF-U9ZRW52TY-5f1673160915-512,
    https://ca.slack-edge.com/T02MD9XTF-UF6T57LSY-5deb246be352-512,
    https://ca.slack-edge.com/T02MD9XTF-U018KT727S5-fbda7b94b0b8-512,
    https://ca.slack-edge.com/T02MD9XTF-USAM1A3MH-3708872f5317-512,
    https://ca.slack-edge.com/T02MD9XTF-U018X447NF2-29785a5b75d3-512,
    https://ca.slack-edge.com/T02MD9XTF-U015WR36Z7D-e58c54de9ffc-512,
    https://ca.slack-edge.com/T02MD9XTF-U018PHFCV1U-04628ef00113-512,
    https://ca.slack-edge.com/T02MD9XTF-U018Y50LM7H-7f6ea6946685-512,
    https://ca.slack-edge.com/T02MD9XTF-U018KT72T4Z-f570acc5374f-512,
    https://ca.slack-edge.com/T02MD9XTF-U018X4459TJ-d347a0dc076c-512,
    https://ca.slack-edge.com/T02MD9XTF-U018KT71N7K-22ec7b7cc8fc-512,
    https://ca.slack-edge.com/T02MD9XTF-U018KT75VTK-929e55e1a654-512,
    https://ca.slack-edge.com/T02MD9XTF-U018X4440QY-5d9b27745d87-512,
    https://ca.slack-edge.com/T02MD9XTF-U0185TA4421-910beec6579a-512,
    https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80, 
    https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80, 
    https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80, 
    https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1931&q=80,
    https://images.unsplash.com/photo-1546456073-ea246a7bd25f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1534564533601-4d3e3d9fd229?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80, 
    https://images.unsplash.com/photo-1521132293557-5b908a59d1e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80,
    https://images.unsplash.com/photo-1518550080824-1d540db258ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1533689476487-034f57831a58?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80,
    https://images.unsplash.com/photo-1524154217857-45f012d0f167?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80,
    https://images.unsplash.com/photo-1524952249965-023a2a31663d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1947&q=80,
    https://images.unsplash.com/photo-1520634222887-a2baa539fab3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80,
    https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1554384645-13eab165c24b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1546672741-d327539d5f13?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1551069613-1904dbdcda11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1548946526-f69e2424cf45?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1542131596-dea5384842c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1546820389-44d77e1f3b31?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1596215143922-eedeaba0d91c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1548898821-d756a2e30bdf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60,
    https://images.unsplash.com/photo-1599589312087-9aaa2d6e37d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60, 
    https://images.unsplash.com/photo-1597783252831-b2180a03ed11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60]



city_name = ["Washington, DC", "New York", "Los Angeles"]





50.times do 
    Movie.create(title: Faker::Movie.title, 
                genre: Faker::Book.genre)
end 

33.times do 

    User.create(name: Faker::Name.name, 
                age: rand(19...50), 
                phone_number: Faker::PhoneNumber.cell_phone,
                bio: Faker::Quote.most_interesting_man_in_the_world,
                photo: user_photos.sample.pop )
    end 
end 

3.times do 

    City.create(name: city_name )

end 
