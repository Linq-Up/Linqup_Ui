import 'package:flutter/material.dart';
import 'package:linqup_mobile_application/enums/enum_data.dart';
import 'package:linqup_mobile_application/model/discover/discover.dart';
import 'package:linqup_mobile_application/model/message/message.dart';
import 'package:linqup_mobile_application/model/status/status.dart';
import 'package:linqup_mobile_application/model/user/user.dart';

import '../screen/onboard/slide_content.dart';
import '../utils/interest_button.dart';

const user1 = User(
  id: '1',
  firstName: 'John',
  lastName: 'Doe',
  bio: 'I am a Linguistic Manager from Kuviki land',
  interest: Interest.friendship,
  interestIn: InterestIn.women,
  lookingFor: 'lookingFor',
  occupation: 'occupation',
  religion: 'Christain',
  dateJoined: 'Jun 12, 2025',
  dateOfBirth: '1990 December 2',
  hobbies: 'Reading, Eating',
  education: 'MBA',
  location: 'Lagos',
  matches: '12',
  likes: '45',
  walletBalance: '900',
  email: 'abc@gmail.com',
  phoneNumber: '+23490123456789',
  profilePictureUrl: 'assets/jpg/profile.jpeg',
);

const user2 = User(
  id: '2',
  firstName: 'Adeola',
  lastName: 'Kunana',
  bio: 'I am a Linguistic Manager from Kuviki land',
  interest: Interest.friendship,
  interestIn: InterestIn.women,
  lookingFor: 'lookingFor',
  occupation: 'occupation',
  religion: 'Christain',
  dateJoined: 'Jun 12, 2025',
  dateOfBirth: '1990 December 2',
  hobbies: 'Reading, Eating',
  education: 'MBA',
  location: 'Lagos',
  matches: '12',
  likes: '45',
  walletBalance: '900',
  email: 'abc@gmail.com',
  phoneNumber: '+23490123456789',
  profilePictureUrl: 'assets/jpg/women1.jpg',
);

const user3 = User(
  id: '3',
  firstName: 'Jane',
  lastName: 'Jacob',
  bio: 'I am a Linguistic Manager from Kuviki land',
  interest: Interest.friendship,
  interestIn: InterestIn.women,
  lookingFor: 'lookingFor',
  occupation: 'occupation',
  religion: 'Christain',
  dateJoined: 'Jun 12, 2025',
  dateOfBirth: '1990 December 2',
  hobbies: 'Reading, Eating',
  education: 'MBA',
  location: 'Lagos',
  matches: '12',
  likes: '45',
  walletBalance: '900',
  email: 'abc@gmail.com',
  phoneNumber: '+23490123456789',
  profilePictureUrl: 'assets/jpg/profile2.jpg',
);

const user4 = User(
  id: '3',
  firstName: 'Titi',
  lastName: 'Bangboshe',
  bio: 'I am a Linguistic Manager from Kuviki land',
  interest: Interest.friendship,
  interestIn: InterestIn.women,
  lookingFor: 'lookingFor',
  occupation: 'occupation',
  religion: 'Christain',
  dateJoined: 'Jun 12, 2025',
  dateOfBirth: '1990 December 2',
  hobbies: 'Reading, Eating',
  education: 'MBA',
  location: 'Lagos',
  matches: '12',
  likes: '45',
  walletBalance: '900',
  email: 'abc@gmail.com',
  phoneNumber: '+23490123456789',
  profilePictureUrl: 'assets/jpg/women2.jpg',
);
const user5 = User(
  id: '3',
  firstName: 'Zainab',
  lastName: 'Abdulrauf',
  bio: 'I am a Linguistic Manager from Kuviki land',
  interest: Interest.friendship,
  interestIn: InterestIn.women,
  lookingFor: 'lookingFor',
  occupation: 'occupation',
  religion: 'Christain',
  dateJoined: 'Jun 12, 2025',
  dateOfBirth: '1990 December 2',
  hobbies: 'Reading, Eating',
  education: 'MBA',
  location: 'Lagos',
  matches: '12',
  likes: '45',
  walletBalance: '900',
  email: 'abc@gmail.com',
  phoneNumber: '+23490123456789',
  profilePictureUrl: 'assets/jpg/women5.jpg',
);

List<User> users = [
  user1,
  user2,
  user3,
  user4,
  user5,
];

List<Discover> posts = [
  const Discover(
    id: '1',
    name: user1,
    state: 'Lagos',
    description:
        'If you could live anywhere in the world, where would you pick?',
    content:
        "Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae. Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae. Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae.",
    imageUrl: 'assets/jpg/city.jpg',
    category: Category.travel,
    categoryIcon: CategoryIcon.travel,
    userProfile: user1,
  ),
  const Discover(
    id: '2',
    name: user2,
    state: 'Enugu',
    description:
        'Writing engaging dating profiles and initiating conversations to understanding healthy relationship dynamics',
    content:
        "Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae. Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae. Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae.",
    imageUrl: 'assets/jpg/couple.jpg',
    category: Category.casualDating,
    categoryIcon: CategoryIcon.casualDating,
    userProfile: user2,
  ),
  const Discover(
    id: '3',
    name: user3,
    state: 'Kanu',
    description:
        'If you could live anywhere in the world, where would you pick?',
    content:
        "Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae. Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae. Lorem ipsum dolor sit amet consectetur. Odio sapien ipsum posuere arcu quis sit tincidunt dictum. Tortor et nunc felis tincidunt. Venenatis feugiat vitae rhoncus amet aliquet. Quis mi fames odio felis. Tempus pretium non massa vitae.",
    imageUrl: 'assets/jpg/city.jpg',
    category: Category.culture,
    categoryIcon: CategoryIcon.travel,
    userProfile: user3,
  ),
];

List<Message> messages = [
  Message(
    id: '1',
    userName: '${user1.firstName} ${user1.lastName}',
    senderImage: user1.profilePictureUrl,
    senderId: user1.id,
    receiverId: user2.id,
    senderMessage:
        'Hello, how are you? lorem ipsum dolor sit amet, consectetur adipiscing elit. lorem ipsum dolor sit amet, consectetur adipiscing elit. lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    receiverImage: user2.profilePictureUrl,
    receiverMessage: 'I am fine, thank you!',
    isRead: false,
    timestamp: '${DateTime.now().hour}:${DateTime.now().minute}',
  ),
  Message(
    id: '2',
    senderId: user2.id,
    receiverId: user3.id,
    senderImage: user2.profilePictureUrl,
    userName: '${user2.firstName} ${user2.lastName}',
    senderMessage: 'What are you up to today?',
    receiverImage: user3.profilePictureUrl,
    receiverMessage: 'Just working on some projects.',
    isRead: true,
    timestamp: '${DateTime.now().hour}:${DateTime.now().minute}',
  ),
  Message(
    id: '3',
    senderId: user3.id,
    receiverId: user1.id,
    senderImage: user3.profilePictureUrl,
    userName: '${user3.firstName} ${user3.lastName}',
    senderMessage: 'Let’s catch up later.',
    receiverImage: user1.profilePictureUrl,
    receiverMessage: 'Sure, sounds good!',
    isRead: false,
    timestamp: '${DateTime.now().hour}:${DateTime.now().minute}',
  ),
  Message(
    id: '4',
    senderId: user4.id,
    receiverId: user5.id,
    senderImage: user4.profilePictureUrl,
    userName: '${user4.firstName} ${user4.lastName}',
    senderMessage: 'Are you free this weekend?',
    receiverImage: user5.profilePictureUrl,
    receiverMessage: 'Yes, I am. What’s up?',
    isRead: true,
    timestamp: '${DateTime.now().hour}:${DateTime.now().minute}',
  ),
  Message(
    id: '5',
    senderId: user5.id,
    receiverId: user1.id,
    senderImage: user5.profilePictureUrl,
    userName: '${user5.firstName} ${user5.lastName}',
    senderMessage: 'Let’s plan a meetup.',
    receiverImage: user1.profilePictureUrl,
    receiverMessage: 'Sounds great, let’s do it!',
    isRead: false,
    timestamp: '${DateTime.now().hour}:${DateTime.now().minute}',
  ),
];

List<InterestButton> buttonList = [
  InterestButton(name: 'Football', icon: 'assets/png/ball.png'),
  InterestButton(name: 'Nature', icon: 'assets/png/nature.png'),
  InterestButton(name: 'Language', icon: 'assets/png/language.png'),
  InterestButton(name: 'Surfing', icon: 'assets/png/surfing.png'),
  InterestButton(name: 'Photography', icon: 'assets/png/photography.png'),
  InterestButton(name: 'Music', icon: 'assets/png/music.png'),
  InterestButton(name: 'Writing', icon: 'assets/png/writing.png'),
  InterestButton(name: 'Fashion', icon: 'assets/png/fashion.png'),
  InterestButton(name: 'Books', icon: 'assets/png/book.png'),
  InterestButton(name: 'Kinky Interest', icon: 'assets/png/kinky.png'),
  InterestButton(
      name: 'Serious Relationship', icon: 'assets/png/relationship.png'),
  InterestButton(name: 'Open to Adventure', icon: 'assets/png/adventure.png'),
  InterestButton(
      name: 'Deep Conversation', icon: 'assets/png/conversation.png'),
  InterestButton(
      name: 'Making New Friends', icon: 'assets/png/make_friends.png'),
  InterestButton(name: 'Sex', icon: 'assets/png/sex.png'),
  InterestButton(name: 'PDA', icon: 'assets/png/pda.png'),
  InterestButton(name: 'Group Hangouts', icon: 'assets/png/hangouts.png'),
];

List<SlideContent> sliderItems = [
  SlideContent(
    image: 'assets/png/kiss_1.png',
    label: 'Find Your Kind \nof Connection',
    subContent:
        "Whether you're looking for love, friendship, or meaningful connections, we’ve created a space that fits your vibe",
    buttonText: 'Find Your Match!',
    onClick: (ctx) {
      Navigator.pushNamed(ctx, '/login');
    },
  ),
  SlideContent(
    image: 'assets/png/date_online_2.png',
    label: 'Chat, Flirt, \nor Just Chill',
    subContent:
        "Meet new people, spark real conversations, and build connection that go beyond swipes and small talk.",
    buttonText: 'Chat',
    onClick: (ctx) {
      Navigator.pushNamed(ctx, '/login');
    },
  ),
  SlideContent(
    image: 'assets/png/date_online_3.png',
    label: 'Friends First? \nTotally Fine.',
    subContent:
        "Not ready for dating? No problem. Connect with like-minded people and build your circle at your own pace.",
    buttonText: 'Find Friends',
    onClick: (ctx) {
      Navigator.pushNamed(ctx, '/login');
    },
  ),
  SlideContent(
    image: 'assets/png/date_online_4.png',
    label: 'Share the \nLove & Earn',
    subContent:
        "Invite your friends and earn rewards for every successful referrals. The more you share, the more you earn!",
    buttonText: 'Refer a Friends',
    onClick: (ctx) {
      Navigator.pushNamed(ctx, '/login');
    },
  ),
  SlideContent(
    image: 'assets/png/date_online_5.png',
    label: 'Your Journey \nStarts Now',
    buttonText: 'Create Account',
    secondButtonText: 'Log In',
    onClick: (ctx) {
      Navigator.pushNamed(ctx, '/sign-up');
    },
    secondOnClick: (ctx) {
      Navigator.pushNamed(ctx, '/login');
    },
  ),
];

List<Status> statusList = [
  Status(
      image: user1.profilePictureUrl, name: user1.firstName, isViewed: false),
  Status(image: user2.profilePictureUrl, name: user2.firstName, isViewed: true),
  Status(
      image: user3.profilePictureUrl, name: user3.firstName, isViewed: false),
  Status(image: user4.profilePictureUrl, name: user4.firstName, isViewed: true),
  Status(
      image: user5.profilePictureUrl, name: user5.firstName, isViewed: false),
];
