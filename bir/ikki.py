def ends_with_gram(words:list):
    lst = [ i for i in words if i[-4:].lower() == "gram"]
    
    return lst




words = ["telegram","Instagram","proGram","Apple","World", "hello", "diagram"]
natija = ends_with_gram(words)
print(natija)