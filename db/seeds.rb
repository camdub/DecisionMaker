
Event.delete_all
Participant.delete_all
Rating.delete_all
Tweet.delete_all

ev = Event.create!( 
  title: 'Mock Negotiation 2012', 
  start_date: Date.new(2012, 11, 2), 
  end_date: Date.new(2012, 11, 3), 
  location: 'Yale University', 
  hashtag: 'yale'
)

p0 = Participant.create!(name: '',position: 'Laos',hashtag: 'laos',image_name: 'laos.png') 
Rating.create!(event_id: ev.id,participant_id:p0.id,rating_count: 0,total_rating: 0) 
p1 = Participant.create!(name: '',position: 'Egypt',hashtag: 'egypt',image_name: 'egypt.png') 
Rating.create!(event_id: ev.id,participant_id:p1.id,rating_count: 0,total_rating: 0) 
p2 = Participant.create!(name: '',position: 'Uganda',hashtag: 'uganda',image_name: 'uganda.png') 
Rating.create!(event_id: ev.id,participant_id:p2.id,rating_count: 0,total_rating: 0) 
p3 = Participant.create!(name: '',position: 'Haiti',hashtag: 'haiti',image_name: 'haiti.png') 
Rating.create!(event_id: ev.id,participant_id:p3.id,rating_count: 0,total_rating: 0) 
p4 = Participant.create!(name: '',position: 'Nepal',hashtag: 'nepal',image_name: 'nepal.png') 
Rating.create!(event_id: ev.id,participant_id:p4.id,rating_count: 0,total_rating: 0) 
p5 = Participant.create!(name: '',position: 'Cambodia',hashtag: 'cambodia',image_name: 'cambodia.png') 
Rating.create!(event_id: ev.id,participant_id:p5.id,rating_count: 0,total_rating: 0) 
p6 = Participant.create!(name: '',position: 'Yemen',hashtag: 'yemen',image_name: 'yemen.png') 
Rating.create!(event_id: ev.id,participant_id:p6.id,rating_count: 0,total_rating: 0) 
p7 = Participant.create!(name: '',position: 'Madagascar',hashtag: 'madagascar',image_name: 'madagascar.png') 
Rating.create!(event_id: ev.id,participant_id:p7.id,rating_count: 0,total_rating: 0) 
p8 = Participant.create!(name: '',position: 'Australia',hashtag: 'australia',image_name: 'australia.png') 
Rating.create!(event_id: ev.id,participant_id:p8.id,rating_count: 0,total_rating: 0) 
p9 = Participant.create!(name: '',position: 'United States',hashtag: 'united_states',image_name: 'united_states.png') 
Rating.create!(event_id: ev.id,participant_id:p9.id,rating_count: 0,total_rating: 0) 
p10 = Participant.create!(name: '',position: 'Iran',hashtag: 'iran',image_name: 'iran.png') 
Rating.create!(event_id: ev.id,participant_id:p10.id,rating_count: 0,total_rating: 0) 
p12 = Participant.create!(name: '',position: 'Qatar',hashtag: 'qatar',image_name: 'qatar.png') 
Rating.create!(event_id: ev.id,participant_id:p12.id,rating_count: 0,total_rating: 0) 
p13 = Participant.create!(name: '',position: 'Saudi Arabia',hashtag: 'saudi_arabia',image_name: 'saudi_arabia.png') 
Rating.create!(event_id: ev.id,participant_id:p13.id,rating_count: 0,total_rating: 0) 
p16 = Participant.create!(name: '',position: 'Angola',hashtag: 'angola',image_name: 'angola.png') 
Rating.create!(event_id: ev.id,participant_id:p16.id,rating_count: 0,total_rating: 0) 
p17 = Participant.create!(name: '',position: 'United Arab Emirates',hashtag: 'united_arab_emirates',image_name: 'united_arab_emirates.png') 
Rating.create!(event_id: ev.id,participant_id:p17.id,rating_count: 0,total_rating: 0) 
p18 = Participant.create!(name: '',position: 'Norway ',hashtag: 'norway',image_name: 'norway.png') 
Rating.create!(event_id: ev.id,participant_id:p18.id,rating_count: 0,total_rating: 0) 
p19 = Participant.create!(name: '',position: 'Japan',hashtag: 'japan',image_name: 'japan.png') 
Rating.create!(event_id: ev.id,participant_id:p19.id,rating_count: 0,total_rating: 0) 
p20 = Participant.create!(name: '',position: 'Venezuela',hashtag: 'venezuela',image_name: 'venezuela.png') 
Rating.create!(event_id: ev.id,participant_id:p20.id,rating_count: 0,total_rating: 0) 
p21 = Participant.create!(name: '',position: 'Canada',hashtag: 'canada',image_name: 'canada.png') 
Rating.create!(event_id: ev.id,participant_id:p21.id,rating_count: 0,total_rating: 0) 
p22 = Participant.create!(name: '',position: 'Russian Federation',hashtag: 'russian_federation',image_name: 'russian_federation.png') 
Rating.create!(event_id: ev.id,participant_id:p22.id,rating_count: 0,total_rating: 0) 
p23 = Participant.create!(name: '',position: 'Mexico',hashtag: 'mexico',image_name: 'mexico.png') 
Rating.create!(event_id: ev.id,participant_id:p23.id,rating_count: 0,total_rating: 0) 
p24 = Participant.create!(name: '',position: 'Republic of Korea',hashtag: 'republic_of_korea',image_name: 'republic_of_korea.png') 
Rating.create!(event_id: ev.id,participant_id:p24.id,rating_count: 0,total_rating: 0) 
p25 = Participant.create!(name: '',position: 'Switzerland',hashtag: 'switzerland',image_name: 'switzerland.png') 
Rating.create!(event_id: ev.id,participant_id:p25.id,rating_count: 0,total_rating: 0) 
p26 = Participant.create!(name: '',position: 'Mongolia',hashtag: 'mongolia',image_name: 'mongolia.png') 
Rating.create!(event_id: ev.id,participant_id:p26.id,rating_count: 0,total_rating: 0) 
p27 = Participant.create!(name: '',position: 'Algeria',hashtag: 'algeria',image_name: 'algeria.png') 
Rating.create!(event_id: ev.id,participant_id:p27.id,rating_count: 0,total_rating: 0) 
p28 = Participant.create!(name: '',position: 'Dominica',hashtag: 'dominica',image_name: 'dominica.png') 
Rating.create!(event_id: ev.id,participant_id:p28.id,rating_count: 0,total_rating: 0) 
p29 = Participant.create!(name: '',position: 'Afghanistan',hashtag: 'afghanistan',image_name: 'afghanistan.png') 
Rating.create!(event_id: ev.id,participant_id:p29.id,rating_count: 0,total_rating: 0) 
p30 = Participant.create!(name: '',position: 'The Gambia',hashtag: 'the_gambia',image_name: 'gambia.png') 
Rating.create!(event_id: ev.id,participant_id:p30.id,rating_count: 0,total_rating: 0) 
p31 = Participant.create!(name: '',position: 'South Africa',hashtag: 'south_africa',image_name: 'south_africa.png') 
Rating.create!(event_id: ev.id,participant_id:p31.id,rating_count: 0,total_rating: 0) 
p32 = Participant.create!(name: '',position: 'Indonesia',hashtag: 'indonesia',image_name: 'indonesia.png') 
Rating.create!(event_id: ev.id,participant_id:p32.id,rating_count: 0,total_rating: 0) 
p33 = Participant.create!(name: '',position: 'Belize',hashtag: 'belize',image_name: 'belize.png') 
Rating.create!(event_id: ev.id,participant_id:p33.id,rating_count: 0,total_rating: 0) 
p34 = Participant.create!(name: '',position: 'Cyprus',hashtag: 'cyprus',image_name: 'cyprus.png') 
Rating.create!(event_id: ev.id,participant_id:p34.id,rating_count: 0,total_rating: 0) 
p35 = Participant.create!(name: '',position: 'Germany',hashtag: 'germany',image_name: 'germany.png') 
Rating.create!(event_id: ev.id,participant_id:p35.id,rating_count: 0,total_rating: 0) 
p36 = Participant.create!(name: '',position: 'Cuba',hashtag: 'cuba',image_name: 'cuba.png') 
Rating.create!(event_id: ev.id,participant_id:p36.id,rating_count: 0,total_rating: 0) 
p37 = Participant.create!(name: '',position: 'Ecuador',hashtag: 'ecuador',image_name: 'ecuador.png') 
Rating.create!(event_id: ev.id,participant_id:p37.id,rating_count: 0,total_rating: 0) 
p39 = Participant.create!(name: '',position: 'Nicaragua',hashtag: 'nicaragua',image_name: 'nicaragua.png') 
Rating.create!(event_id: ev.id,participant_id:p39.id,rating_count: 0,total_rating: 0) 
p40 = Participant.create!(name: '',position: 'Kenya ',hashtag: 'kenya',image_name: 'kenya.png') 
Rating.create!(event_id: ev.id,participant_id:p40.id,rating_count: 0,total_rating: 0) 
p41 = Participant.create!(name: '',position: 'Spain',hashtag: 'spain',image_name: 'spain.png') 
Rating.create!(event_id: ev.id,participant_id:p41.id,rating_count: 0,total_rating: 0) 
p42 = Participant.create!(name: '',position: 'China',hashtag: 'china',image_name: 'china.png') 
Rating.create!(event_id: ev.id,participant_id:p42.id,rating_count: 0,total_rating: 0) 
p43 = Participant.create!(name: '',position: 'Bolivia',hashtag: 'bolivia',image_name: 'bolivia.png') 
Rating.create!(event_id: ev.id,participant_id:p43.id,rating_count: 0,total_rating: 0) 
p44 = Participant.create!(name: '',position: 'Tuvalu',hashtag: 'tuvalu',image_name: 'tuvalu.png') 
Rating.create!(event_id: ev.id,participant_id:p44.id,rating_count: 0,total_rating: 0) 
p45 = Participant.create!(name: '',position: 'Maldives',hashtag: 'maldives',image_name: 'maldives.png') 
Rating.create!(event_id: ev.id,participant_id:p45.id,rating_count: 0,total_rating: 0) 
p46 = Participant.create!(name: '',position: 'Greece',hashtag: 'greece',image_name: 'greece.png') 
Rating.create!(event_id: ev.id,participant_id:p46.id,rating_count: 0,total_rating: 0) 
p47 = Participant.create!(name: '',position: 'Papua New Guinea',hashtag: 'papua_new_guinea',image_name: 'papua_new_guinea.png') 
Rating.create!(event_id: ev.id,participant_id:p47.id,rating_count: 0,total_rating: 0) 
p48 = Participant.create!(name: '',position: 'Solomon Islands',hashtag: 'solomon_islands',image_name: 'solomon_islands.png') 
Rating.create!(event_id: ev.id,participant_id:p48.id,rating_count: 0,total_rating: 0) 
p50 = Participant.create!(name: '',position: 'Liberia',hashtag: 'liberia',image_name: 'liberia.png') 
Rating.create!(event_id: ev.id,participant_id:p50.id,rating_count: 0,total_rating: 0) 
p51 = Participant.create!(name: '',position: 'Brazil',hashtag: 'brazil',image_name: 'brazil.png') 
Rating.create!(event_id: ev.id,participant_id:p51.id,rating_count: 0,total_rating: 0) 
p52 = Participant.create!(name: '',position: 'India',hashtag: 'india',image_name: 'india.png') 
Rating.create!(event_id: ev.id,participant_id:p52.id,rating_count: 0,total_rating: 0) 
p53 = Participant.create!(name: '',position: 'Italy',hashtag: 'italy',image_name: 'italy.png') 
Rating.create!(event_id: ev.id,participant_id:p53.id,rating_count: 0,total_rating: 0) 
p54 = Participant.create!(name: '',position: 'Nauru',hashtag: 'nauru',image_name: 'nauru.png') 
Rating.create!(event_id: ev.id,participant_id:p54.id,rating_count: 0,total_rating: 0) 
p55 = Participant.create!(name: '',position: 'United Kingdom',hashtag: 'united_kingdom',image_name: 'united_kingdom.png') 
Rating.create!(event_id: ev.id,participant_id:p55.id,rating_count: 0,total_rating: 0) 
p58 = Participant.create!(name: '',position: 'Somalia',hashtag: 'somalia',image_name: 'somalia.png') 
Rating.create!(event_id: ev.id,participant_id:p58.id,rating_count: 0,total_rating: 0) 

