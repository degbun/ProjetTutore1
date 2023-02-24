from collections import defaultdict

def dsatur(graph):
    couleur = {}
    saturation = defaultdict(int)
    degree = defaultdict(int)
    
    for noeud in graph:
        degree[noeud] = len(graph[noeud])
        
    noncolorie = list(graph.keys())
    
    while noncolorie:
        noeud = max(noncolorie, key=lambda x: degree[x] + saturation[x])
        voisins = graph[noeud]
        coleurutilise = set(couleur.get(n, None) for n in voisins)
        for color in range(len(couleur) + 1):
            if color not in coleurutilise:
                break
        couleur[noeud] = color
        saturation[noeud] = 0
        noncolorie.remove(noeud)
        for voisin in voisins:
            saturation[voisin] += 1
            if voisin in noncolorie:
                degree[voisin] -= 1
    
    return couleur


graph1 = {
    'A': [ 'B', 'E'],
    'B': ['A', 'C'],
    'C': ['F', 'B', 'D'],
    'D': ['F', 'E', 'C'],
    'E':['A','F','D'],
    'F':['E','D','C']
}

colors = dsatur(graph1)
print(colors)