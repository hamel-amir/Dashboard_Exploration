# Dashboard_Exploration
Application web développé en langage R et de la librairie shiny, qui permet :
      Choix de données (déjà présentes ou chargement de fichiers textes)
      Réalisation des calculs statistiques simples
      Création des graphiques usuels

Les onglets

      Données : a importer
      Univarié : description d'une variable
      Bivariée : description du lien entre deux variables
      Informations de base (nombre de valeurs, nombre de valeurs manquantes, % de valeurs manquantes)
      Analyse Univariée :
                Quantitative:
                    Numérique : moyenne, écart-type, variance, minimum, Q1, médiane, Q3, maximum
                    Histogramme : par nombre d'intervalles, par largeur, discrétisation personnalisée
                    Boîte à moustaches
                    Fréquences cumulées
                    Courbe cumulée : même choix que pour l'histogramme

                Qualitative
                    Numérique : modalités, effectifs, proportions (avec cumulées si demandé)
                    Diagramme en barres : en effectifs ou en proportions
     Analyse Bivariée:
                2 Quantitatives
                      Numérique : covariance et corrélation
                      Nuage de points
                      Heatmap

                2 Qualitatives
                      Diagramme en barres : empilées ou séparées, en effectifs ou en fréquences
                      Heatmap
                Quantitative vs qualitative
                        Numérique : même informations que pour une variable quantitative, mais pour chaque modalité
                        Histogramme
                        Boîtes à moustaches
                        Fréquences cumulées

