

// ignore_for_file: constant_identifier_names, unnecessary_const

import 'package:dawra/models/category.dart';
import 'package:dawra/models/trip.dart';


const Categories_data = [
  Category(
    id: 'c1',
    title: 'Mountains',
    imageUrl:
        'https://images.unsplash.com/photo-1575728252059-db43d03fc2de?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTh8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=',
  ),

  Category(
    id: 'c2',
    title: 'Lakes',
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),

  Category(
    id: 'c3',
    title: 'Beaches',
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),

  Category(
    id: 'c4',
    title: 'Deserts',
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),

  Category(
    id: 'c5',
    title: 'Historical Cities',
    imageUrl:
        'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),

  Category(
    id: 'c6',
    title: 'Others',
    imageUrl:
        'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
];

const Trips_data = const [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Alps Mountains',
    tripType: TripType.adventure,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1611523658822-385aa008324c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bW91bnRhaW5zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 20,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Skiing',
      'Day 3: Guided tour of the village',
      'Day 4: Shopping and lunch',
      'Day 5: Departure'
    ],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Southern Mountains',
    tripType: TripType.adventure,
    season: Season.Autumn,
    imageUrl:
        'https://images.unsplash.com/photo-1612456225451-bb8d10d0131d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 10,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Skiing',
      'Day 3: Guided tour of the village',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'High Mountains',
    tripType: TripType.nature,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1592221912790-2b4df8882ea9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 45,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Skiing',
      'Day 3: Guided tour of the village',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm4',
    categories: [
      'c2',
      'c1',
    ],
    title: 'Great Lake',
    tripType: TripType.relax,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 60,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Boat tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm5',
    categories: [
      'c2',
      'c1',
    ],
    title: 'Small Lakes',
    tripType: TripType.relax,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1580100586938-02822d99c4a8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGxha2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 15,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Boat tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'Emerald Lake',
    tripType: TripType.adventure,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 24,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Boat tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'First Beach',
    tripType: TripType.adventure,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 20,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Beach tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'Big Beach',
    tripType: TripType.nature,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1519046904884-53103b34b206?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 35,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Beach tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'Central Beach',
    tripType: TripType.adventure,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 40,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Beach tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm10',
    categories: [
      'c4',
      'c1',
    ],
    title: 'Egyptian Desert',
    tripType: TripType.relax,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1585314065239-2cb0bf6d2f33?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGRlc2VydCUyMGNhbXB8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 45,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Desert tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm11',
    categories: [
      'c4',
      'c1',
    ],
    title: 'Western Desert',
    tripType: TripType.relax,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1563041451-f9cbdc6f2876?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fGRlc2VydCUyMGNhbXB8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 25,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Desert tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'Great Desert',
    tripType: TripType.relax,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1483205771947-f369b2e44a62?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 36,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Desert tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm13',
    categories: [
      'c4',
    ],
    title: 'Golden Desert',
    tripType: TripType.adventure,
    season: Season.Summer,
    imageUrl:
        'https://images.unsplash.com/photo-1610057097620-2d4c3e8f6d54?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 150,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: Desert tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: 'Big City',
    tripType: TripType.relax,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1506784235814-2accf142a1f0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2l0eXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 70,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: City tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm15',
    categories: [
      'c5',
    ],
    title: 'Central City',
    tripType: TripType.relax,
    season: Season.Winter,
    imageUrl:
        'https://images.unsplash.com/photo-1543579300-43a27e13c79b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2l0eXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 30,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: City tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm16',
    categories: [
      'c5',
      'c1',
    ],
    title: 'Small City',
    tripType: TripType.adventure,
    season: Season.Spring,
    imageUrl:
        'https://images.unsplash.com/photo-1542317891-5c6adve9463e85?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhbXB8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 45,
    activities: [
      'Visiting archaeological sites',
      'Walking tour',
      'Shopping at commercial centers',
      'Having lunch',
      'Enjoying beautiful views'
    ],
    program: [
      'Day 1: Arrival and rest',
      'Day 2: City tour',
      'Day 3: Hiking',
      'Day 4: Shopping and lunch',
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
];
