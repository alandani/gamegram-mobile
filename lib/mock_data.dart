import 'models.dart';

final demoProfile = UserProfile(
  id: 'user_1',
  username: 'setthepace',
  posts: 12,
  followers: 3500,
  following: 584,
);

final demoSandboxes = <SandboxGame>[
  SandboxGame(
    id: 'b1b2c3d4-0000-0000-0000-000000000001',
    name: 'platformer',
    sandboxUrl: 'https://your-platformer.netlify.app/index.html',
    runnableUrl:
        'https://gamegram-backend-2fqi.onrender.com/sandboxes/b3fab486-79fc-46ac-9abc-12c142a82c28/files/index.html?mode=edit&sandbox_id=b3fab486-79fc-46ac-9abc-12c142a82c28',
    thumbnail: 'assets/placeholder_space.png',
    creatorName: 'Gamegram Creator',
  ),
  SandboxGame(
    id: 'b1b2c3d4-0000-0000-0000-000000000002',
    name: 'quiz',
    sandboxUrl: 'https://your-quiz.netlify.app/index.html',
    runnableUrl:
        'https://gamegram-backend-2fqi.onrender.com/sandboxes/b3fab486-79fc-46ac-9abc-12c142a82c28/files/index.html?mode=edit&sandbox_id=b3fab486-79fc-46ac-9abc-12c142a82c28',
    thumbnail: 'assets/placeholder_space.png',
    creatorName: 'Gamegram Creator',
  ),
  SandboxGame(
    id: 'b3fab486-79fc-46ac-9abc-12c142a82c28',
    name: 'test2',
    sandboxUrl:
        'https://npmrrkwizgrjiodijvje.supabase.co/storage/v1/object/public/sandboxes/test2/index.html?',
    runnableUrl:
        'https://gamegram-backend-2fqi.onrender.com/sandboxes/b3fab486-79fc-46ac-9abc-12c142a82c28/files/index.html?mode=edit&sandbox_id=b3fab486-79fc-46ac-9abc-12c142a82c28',
    thumbnail: 'assets/placeholder_space.png',
    creatorName: 'Gamegram Creator',
  ),
  SandboxGame(
    id: '5815884f-0d3d-49f3-bd62-a494f085c7f2',
    name: 'test',
    sandboxUrl:
        'https://npmrrkwizgrjiodijvje.supabase.co/storage/v1/object/public/sandboxes/test/index.html?',
    runnableUrl:
        'https://gamegram-backend-2fqi.onrender.com/sandboxes/b3fab486-79fc-46ac-9abc-12c142a82c28/files/index.html?mode=edit&sandbox_id=b3fab486-79fc-46ac-9abc-12c142a82c28',
    thumbnail: 'assets/placeholder_space.png',
    creatorName: 'Gamegram Creator',
  ),
];

final demoGames = <Game>[
  Game(
    id: 'polytrack',
    title: 'Polytrack',
    developerName: 'IndieDev',
    likes: 12400,
    comments: 230,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzI2MDUxNTMzLnBuZw==/315x250%23c/9Ods9%2B.png',
    playUrl:
        'https://html-classic.itch.zone/html/16755713/index.html?v=1773141754',
  ),
  Game(
    id: 'outhold',
    title: 'Outhold',
    developerName: 'IndieDev',
    likes: 9800,
    comments: 180,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzIzODM2MDY1LnBuZw==/315x250%23c/elpSf3.png',
    playUrl:
        'https://html-classic.itch.zone/html/13820450-1489126/index.html',
  ),
  Game(
    id: 'black_castle_2',
    title: 'Black Castle 2',
    developerName: 'IndieDev',
    likes: 11250,
    comments: 205,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzI1NTg0MDYyLnBuZw==/315x250%23c/IFRLme.png',
    playUrl: 'https://html-classic.itch.zone/html/16720108/index.html?v=1772868727',
  ),
  Game(
    id: 'six_cat_under',
    title: 'Six Cat Under',
    developerName: 'IndieDev',
    likes: 8650,
    comments: 150,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzE4MzA4Mjg5LnBuZw==/315x250%23c/eAuQL7.png',
    playUrl:
        'https://html-classic.itch.zone/html/2267583/index.html?v=1591301667',
  ),
  Game(
    id: 'chemistower',
    title: 'Chemistower',
    developerName: 'IndieDev',
    likes: 7300,
    comments: 120,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzI2MDU0MjIzLnBuZw==/315x250%23c/RFeXtt.png',
    playUrl:
        'https://html-classic.itch.zone/html/16756806/ChemistowerDemoFullWebBuild/index.html?v=1773152030',
  ),
  Game(
    id: 'black_hole_gun',
    title: 'Black Hole Gun',
    developerName: 'IndieDev',
    likes: 9100,
    comments: 175,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzIxODM3OTQ1LnBuZw==/315x250%23c/sWsWs4.png',
    playUrl: 'https://html-classic.itch.zone/html/14111168/index.html',
  ),
  Game(
    id: 'kittytoy',
    title: 'KittyToy',
    developerName: 'IndieDev',
    likes: 6400,
    comments: 90,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzE2NTk0ODMxLnBuZw==/315x250%23c/aqUODE.png',
    playUrl:
        'https://html-classic.itch.zone/html/10701493/index.html?v=1732313567',
  ),
  Game(
    id: 'melanie',
    title: 'Melanie',
    developerName: 'IndieDev',
    likes: 7800,
    comments: 130,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzg0MjM2MDgucG5n/315x250%23c/d%2FEaEK.png',
    playUrl:
        'https://html-classic.itch.zone/html/13429050/web/index.html',
  ),
  Game(
    id: 'tamaweb',
    title: 'Tamaweb',
    developerName: 'IndieDev',
    likes: 5200,
    comments: 75,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzE3Nzk3NDg4LnBuZw==/315x250%23c/ZJr4Ym.png',
    playUrl:
        'https://html-classic.itch.zone/html/16554576/index.html?v=1771695537',
  ),
  Game(
    id: 'super_mario_63',
    title: 'Super Mario 63',
    developerName: 'IndieDev',
    likes: 15200,
    comments: 320,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzEyMDEzMTE5LnBuZw==/315x250%23c/1vbA44.png',
    playUrl:
        'https://html-classic.itch.zone/html/7803470/index.html?v=1732313647',
  ),
  Game(
    id: 'shadow_runner',
    title: 'Shadow Runner',
    developerName: 'IndieDev',
    likes: 6800,
    comments: 110,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzIwNjM5NDMuZ2lm/315x250%23c/%2BC0t5F.gif',
    playUrl:
        'https://html-classic.itch.zone/html/353430/index.html?v=1542782413',
  ),
  Game(
    id: 'artificer',
    title: 'Artificer',
    developerName: 'IndieDev',
    likes: 8400,
    comments: 140,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzIyMjAzNTcucG5n/315x250%23c/oQTZaz.png',
    playUrl:
        'https://html-classic.itch.zone/html/2743755/index.html?v=1732313804',
  ),
  Game(
    id: 'golgol_runner',
    title: 'golgol-runner',
    developerName: 'IndieDev',
    likes: 5900,
    comments: 95,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzY4MDQzMDYucG5n/315x250%23c/jTfEX0.png',
    playUrl:
        'https://html-classic.itch.zone/html/4354731/index.html',
  ),
  Game(
    id: 'pokemon_overlord',
    title: 'Pokemon Overlord',
    developerName: 'IndieDev',
    likes: 10100,
    comments: 210,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzI0Njk4MDE1LnBuZw==/315x250%23c/FbRYdg.png',
    playUrl: 'https://jab-lao.itch.io/pokemon-overlord',
  ),
  Game(
    id: 'zombotron',
    title: 'Zombotron',
    developerName: 'IndieDev',
    likes: 9300,
    comments: 190,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzI2NDI3MTkucG5n/315x250%23c/pYhxyd.png',
    playUrl: 'https://html-classic.itch.zone/html/13200376/index.html',
  ),
  Game(
    id: 'sunnyland',
    title: 'sunnyland',
    developerName: 'IndieDev',
    likes: 7100,
    comments: 125,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzI1NDk1NDM3LnBuZw==/315x250%23c/oDTApt.png',
    playUrl: 'https://html-classic.itch.zone/html/10977225/index.html',
  ),
  Game(
    id: 'electric_trains',
    title: 'Electric Trains',
    developerName: 'IndieDev',
    likes: 6700,
    comments: 100,
    thumbnailAsset:
        'https://img.itch.zone/aW1nLzMxNDA5NjUucG5n/315x250%23c/LMBBxo.png',
    playUrl: 'https://html-classic.itch.zone/html/14589544/index.html',
  ),
];
