import 'package:portfolio/model/app_icons_model.dart';
import 'package:portfolio/model/project_model.dart';
import 'package:portfolio/utils/configuration.dart';

List<dynamic> skill = [
  ["Flutter", "React Native", "Swift"],
  ["java Script", "Type Script", "Dart"],
  ["Node JS", "React"],
  ["Html", "Css", "Tailwind"],
  ["PostgreSQL", "Firebase", "MongoDB"],
];

List<ProjectModel> projectData = [
  ProjectModel(
      name: "Shopkeeper",
      description: "Flutter , PostgreSQL , Node JS",
      routeUrl: "https://github.com/Ozberksenn/shopkeeper",
      image:
          "https://ucarecdn.com/d1963b0e-ef67-41e7-8725-b632f1988117/shopkeeper.png",
      profileUrl: 'shopkeeper'),
  ProjectModel(
      name: "Chat Socket",
      description: "Flutter with Node Js and Scoket IO",
      profileUrl: 'chatSocket',
      routeUrl: "https://github.com/Ozberksenn/chat-socket",
      image:
          "https://miro.medium.com/v2/resize:fit:1400/0*K91yVP0ewgIiJVz_.png"),
  ProjectModel(
      name: "Bereal Clone",
      profileUrl: 'bereal',
      routeUrl: "https://github.com/Ozberksenn/bereal-clone",
      description: "Flutter , MongoDB and Node JS",
      image:
          "https://ucarecdn.com/402481a1-27e5-4015-9a62-5577f81970a7/berealtwitter.png"),
  ProjectModel(
      name: "Restaurant",
      profileUrl: 'restaurant',
      routeUrl: "https://github.com/Ozberksenn/restaurant",
      description: "Flutter design",
      image:
          "https://ucarecdn.com/bb9ece4b-5883-4768-b831-efa3883e6e5c/restaurant.png"),
  ProjectModel(
      name: "Chat App",
      description: "React Native Project",
      profileUrl: 'chatApp',
      routeUrl: "https://github.com/Ozberksenn/ChatApp",
      image:
          "https://ucarecdn.com/594c56b5-1d22-4ce5-bdfd-e81ca441ceb5/194776013570e35af69eb460e81cd82e1c7ea7d7d.jpeg"),
  ProjectModel(
      name: "List App",
      profileUrl: 'list',
      description: "Swift Basic project",
      routeUrl: "https://github.com/Ozberksenn/ListApp-Swift",
      image:
          "https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/218864358/original/46fac9850a9b8774aad96615063df96722d95bfe/develop-ios-app-for-iphone-and-ipad-in-swift-and-swiftui.png"),
  ProjectModel(
      name: "File Upload",
      profileUrl: 'file',
      description: "Node Js Project",
      routeUrl: "https://github.com/Ozberksenn/FileUpload",
      image:
          "https://ucarecdn.com/d7845df7-295d-4481-9d2f-280102503410/Tii_User_File_UploadFileEmpty_856x356.png"),
  ProjectModel(
      name: "Survey",
      profileUrl: 'survey',
      description: "Node Js Project",
      routeUrl: "https://github.com/Ozberksenn/survey_nodejs",
      image:
          "https://ucarecdn.com/36111da8-bef3-4153-9f8e-c02af148ab52/9DifferentTypesofSurveyMethods2x8.png"),
];

List<AppIconsModel> applications = [
  AppIconsModel(
      id: 1,
      bottom: 1,
      name: "Email",
      image:
          "https://ucarecdn.com/a029e972-dcb0-4dbd-ae11-6ae308fa7931/mail.png",
      url: email),
  AppIconsModel(
    id: 2,
    bottom: 2,
    name: "Projects",
    image:
        "https://ucarecdn.com/44265112-94d9-4128-8427-ec8c58a6f486/foldericonmacospng.webp",
  ),
  AppIconsModel(
    id: 3,
    bottom: 1,
    name: "Calendar",
  ),
  AppIconsModel(
      id: 4,
      bottom: 2,
      name: "Spotify",
      image:
          "https://ucarecdn.com/287ba6fa-9693-4f3c-9df7-0dec3aafcbb5/images.png",
      url:
          "https://open.spotify.com/user/212fqeawr4gidha5lelcaevnq?si=573e88c7fbff46d5"),
  AppIconsModel(
      id: 5,
      bottom: 1,
      name: "Contact",
      image:
          "https://ucarecdn.com/88cb9f3e-0b21-47a2-85b5-c76c3241f18e/contact.png"),
  AppIconsModel(
      id: 6,
      name: "Resume",
      url: resumeUrl,
      image:
          "https://ucarecdn.com/6f05fac5-7642-4b82-a4e6-eeddf0ed25aa/Adobe_Acrobat_Reader.webp"),
  AppIconsModel(
      id: 7,
      name: "Github",
      url: githubUrl,
      image:
          "https://ucarecdn.com/2afb6a87-55a6-4fff-b6e1-684c3e437baa/github6980894_1280.webp"),
  AppIconsModel(
      id: 8,
      name: "Linkedin",
      url: linkedinUrl,
      image:
          "https://ucarecdn.com/eb590850-8828-48e2-b4f6-1a20c8605195/linkedin.png"),
  AppIconsModel(
      id: 9,
      name: "Language",
      image:
          "https://ucarecdn.com/daafe2f6-c509-4389-a52f-0643e49d69cd/iconsvg.png"),
];
