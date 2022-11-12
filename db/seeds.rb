User.create(name: "mark", email: "mark@email.com", password: "password", avatar: "https://avataaars.io/?avatarStyle=Circle&topType=ShortHairShaggyMullet&accessoriesType=Prescription02&hairColor=Black&facialHairType=Blank&clotheType=GraphicShirt&clotheColor=Gray02&graphicType=Pizza&eyeType=Default&eyebrowType=Default&mouthType=Default&skinColor=Light")

User.create(name: "jacob", email: "jacob@email.com", password: "password", avatar: "https://avataaars.io/?avatarStyle=Circle&topType=ShortHairTheCaesar&accessoriesType=Blank&hairColor=Brown&facialHairType=Blank&clotheType=ShirtVNeck&clotheColor=White&eyeType=Default&eyebrowType=Default&mouthType=Default&skinColor=Pale")

Snapshot.create(title: "summertime <3", start_date: "2022-06-01", end_date: "2022-09-01", image: "https://img.freepik.com/free-vector/watercolor-summer-vibes-illustration_52683-84832.jpg?w=2000", artists: ["Lady Gaga", "Magic Giant"], tracks: ["Million Bucks", "Dive"], user_id: 1)

Snapshot.create(title: "winter </3", start_date: "2021-11-01", end_date: "2022-03-01", image: "https://img.freepik.com/premium-vector/winter-vibes-background-watercolor_23-2148708516.jpg?w=2000", artists: ["Hozier", "Lindsey Stirling"], tracks: ["Los Ageless", "Almost (Sweet Music)"], user_id: 1)

Snapshot.create(title: "2020", start_date: "2020-01-01", end_date: "2020-12-31", image: "https://images.pexels.com/photos/1679618/pexels-photo-1679618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", artists: ["Mac Miller", "The Killers"], tracks: ["Float On"], user_id: 2)

Snapshot.create(title: "2021 jumpstart", start_date: "2021-01-01", end_date: "2021-05-31", artists: ["Brian Fallon", "Generationals"], tracks: ["Put A Light On"], image: "https://images.pexels.com/photos/406014/pexels-photo-406014.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", user_id: 2)

Artist.create(name: "Lady Gaga", image: "https://www.billboard.com/wp-content/uploads/media/05-lady-gaga-migos-memes-billboard-1548.jpg?w=942&h=623&crop=1", snapshot_id: 1, user_id: 1)

Artist.create(name: "Magic Giant", image: "https://pbs.twimg.com/profile_images/1195204890240462848/xYfAmcXC_400x400.jpg", snapshot_id: 1, user_id: 1)

Artist.create(name: "Lindsey Stirling", image: "https://deseret.brightspotcdn.com/dims4/default/66e0112/2147483647/strip/true/crop/3000x1688+0+156/resize/1665x937!/quality/90/?url=https%3A%2F%2Fcdn.vox-cdn.com%2Fthumbor%2F83_tJF9ZKd0AiS1TG6IBgq51VRw%3D%2F0x0%3A3000x2000%2F3000x2000%2Ffilters%3Afocal%281500x1000%3A1501x1001%29%2Fcdn.vox-cdn.com%2Fuploads%2Fchorus_asset%2Ffile%2F22525723%2FLindsey_Stirling_f.jpg", snapshot_id: 2, user_id: 1)

Artist.create(name: "Hozier", image: "https://www.rollingstone.com/wp-content/uploads/2018/08/hozier-press-photo.jpg", snapshot_id: 2, user_id: 1)

Artist.create(name: "Mac Miller", image: "https://i.scdn.co/image/ab6761610000e5ebed3b89aa602145fde71a163a", snapshot_id: 3, user_id: 2)

Artist.create(name: "Brian Fallon", image: "https://media.stubhubstatic.com/stubhub-catalog/d_defaultLogo.jpg/t_f-fs-0fv,q_auto:low,f_auto,c_fill,$w_280_mul_3,$h_180_mul_3/performer/483988/image", snapshot_id: 3, user_id: 2)

Artist.create(name: "The Killers", image: "https://iscale.iheart.com/v3/surl/aHR0cDovL2ltYWdlLmloZWFydC5jb20vaW1hZ2VzL292ZXJyaWRlLzM2NjQ3XzcyNWM4MTE1LThhNDAtNGM5MC04Y2FjLWQzMmIxZDliMjc1NC5qcGc=?sn=eGtleWJhc2UyMDIxMTExMDpdzmEOZEy4vMEnZmsqi_3PpgX1SG_6GPOnr4oB65ww6g%3D%3D&surrogate=1cOXl179JY-syhxYSCX6Q1a_Mcu6UO8d-F4oJzpZf1hcUbJr4aImwtcNFletywNPb6fTMmzuIK9vjis5Xi-vuE0zACZntGqFO9dvFmNLe8IwD9aOrTpbHQDljqZzZJ0Ge8werBlmchkdaER9wNhCNzQ0_aFEBhJZARTudC7L4AikewKVZTSeYJM05DOkxgGL9UHf-w-pjRGE1uD0erOxg0zTnLfHv35Vp-PthToO4nPx7C4UNGgMmTFoci02Im_v", snapshot_id: 4, user_id: 2)

Artist.create(name: "Generationals", image: "https://www.roughtradepublishing.com/wp-content/uploads/2017/06/Generationals.jpg", snapshot_id: 4, user_id: 2)

Song.create(title: "Million Bucks", artist: "smallpools", album: "Million Bucks", album_art: "https://atwoodmagazine.com/wp-content/uploads/2017/06/Million-Bucks-Smallpools-single-art.jpg", snapshot_id: 1, user_id: 1)

Song.create(title: "Dive", artist: "Coast Modern", album: "Coast Modern", album_art: "https://i.scdn.co/image/ab67616d0000b2732fd2abcce5c533647221bc85", snapshot_id: 1, user_id: 1)

Song.create(title: "Los Ageless", artist: "St. Vincent", album: "MASSEDUCTION", album_art: "https://media.pitchfork.com/photos/59aff367c6078536656ede7b/1:1/w_620,h_620,c_limit/STV-MASSEDUCTION-PACKSHOT.jpg", snapshot_id: 2, user_id: 1)

Song.create(title: "Almost (Sweet Music)", artist: "Hozier", album: "Wasteland, Baby!", album_art: "https://m.media-amazon.com/images/I/718WDEiQGUL._SS500_.jpg", snapshot_id: 2, user_id: 1)

Song.create(title: "Float On", artist: "Modest Mouse", album: "good news for people who love bad news", album_art: "https://preview.redd.it/bcll5y0ihwn41.jpg?width=640&crop=smart&auto=webp&s=1006464f0062f505d6b7389d381599d881095ff9", snapshot_id: 3, user_id: 2)

Song.create(title: "Put A Light On", artist: "Generationals", album: "Heza", album_art: "https://media.pitchfork.com/photos/5929ba4413d197565213b03f/1:1/w_600/f143b422.jpg", snapshot_id: 4, user_id: 2)

Genre.create(title: "Pop", snapshot_id: 1, user_id: 1)

Genre.create(title: "EDM", snapshot_id: 1, user_id: 1)

Genre.create(title: "Hip-Hop", snapshot_id: 1, user_id: 1)

Genre.create(title: "Dance", snapshot_id: 1, user_id: 1)

Genre.create(title: "Indie", snapshot_id: 2, user_id: 1)

Genre.create(title: "Chill", snapshot_id: 2, user_id: 1)

Genre.create(title: "Alternative", snapshot_id: 3, user_id: 2)

Genre.create(title: "Caribbean", snapshot_id: 3, user_id: 2)

Genre.create(title: "Metal", snapshot_id: 4, user_id: 2)

Genre.create(title: "Hip-Hop", snapshot_id: 4, user_id: 2)
