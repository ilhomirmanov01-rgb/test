def search_by_genre(roy,janr):
    lst = []
    for i in roy:
        for key, value in i.items():
            if key == "genre" and value == janr:
                lst.append(i)
    return lst




genre = input("Janrni kiriting -> ")
cinema = [
    {"title": "Avatar", "genre": "Fantastika", "price": 40000},
    {"title": "Sherlock", "genre": "Detektiv", "price": 30000},
    {"title": "Oq yo'l", "genre": "Drama", "price": 25000},
    {"title": "Dune", "genre": "Fantastika", "price": 35000}
]

natija = search_by_genre(cinema,genre)
print(natija)
    