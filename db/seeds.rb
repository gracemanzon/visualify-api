User.create(name: "mark", email: "mark@email.com", password: "password", avatar: "https://avataaars.io/?avatarStyle=Circle&topType=ShortHairShaggyMullet&accessoriesType=Prescription02&hairColor=Black&facialHairType=Blank&clotheType=GraphicShirt&clotheColor=Gray02&graphicType=Pizza&eyeType=Default&eyebrowType=Default&mouthType=Default&skinColor=Light")

User.create(name: "jacob", email: "jacob@email.com", password: "password", avatar: "https://avataaars.io/?avatarStyle=Circle&topType=ShortHairTheCaesar&accessoriesType=Blank&hairColor=Brown&facialHairType=Blank&clotheType=ShirtVNeck&clotheColor=White&eyeType=Default&eyebrowType=Default&mouthType=Default&skinColor=Pale")

Snapshot.create(title: "summertime <3", start_date: "2022-06-01", end_date: "2022-09-01", image: "image.url", user_id: 1)

Snapshot.create(title: "winter </3", start_date: "2021-11-01", end_date: "2022-03-01", image: "image.url", user_id: 1)

Snapshot.create(title: "2020", start_date: "2020-01-01", end_date: "2020-12-31", image: "image.url", user_id: 2)

Snapshot.create(title: "2021 jumpstart", start_date: "2021-01-01", end_date: "2021-05-31", image: "image.url", user_id: 2)
