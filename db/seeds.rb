user1 = User.create(user_name: 'Sarah O&apos;connor')
user2 = User.create(user_name: 'Joshep Thiele')


bio_description = "Lorem ipsum dolor sit amet, consectetueradipiscing elit. Aenean commodo ligula 
eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes
, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, 
pretium quis, sem. Nulla consequat massa quis enim."

doctor1 = Doctor.create(name: 'Peter Omaha', speciality: 'General Practice', description: bio_description, graduation: '05/02/2010', image: 'https://t4.ftcdn.net/jpg/03/05/41/27/360_F_305412791_XRNiWaFCREjLLpSQfj0e736foBoYXXYv.jpg')
doctor2 = Doctor.create(name: 'Steven Hobb', speciality: 'Dentist', description: 'Top dentist in the city of New York. Come get your dentals corrected in a single appointment. ', graduation: '2001-01-30', image: 'https://static9.depositphotos.com/1037778/1113/i/600/depositphotos_11138153-stock-photo-mature-dentist-surgeon-at-office.jpg')

reservation1 = Reservation.create(date: '05/05/2023', city: 'Los Angeles (CA)', user_id: user1.id, doctor_id: doctor1.id )
reservation2 = Reservation.create(date: '10/04/2023', city: 'New York (NY)', user_id: user2.id, doctor_id: doctor2.id )
