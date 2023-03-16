# Dashboard_Exploration
Application web intéractive développé en langage R et de la librairie shiny, qui permet le choix de données (chargement des fichiers de données),l'exploration et la visualisations des données avec des graphiques  ,réalisation des calculs statistiques ainsi qu'une partie d'apprentissage automatique .Et donc cet outil se base sur deux axes :Analyse descriptives (Univariée et Bivariée) et explicatives des données (des modéles de machine Learning)

Importation du fichier de données :

           Importataion de différents types de fichiers (csv,txt,xlsx) avec différents séparateurs (virgule,espace,tabulation,point,point virgule)
L'onglet dataset :
           Affichage de la table de données avec le nombre de lignes et le nombre de colonnes 
           
L'onglet prétraitement de données : c'est l'ensemble de méthodes ou de processus de traitement de données brutes afin de les rendre fiables ,exploitables et utiles  dans des éventuels modéles d'apprentissage automatique 

       Identification et traitement des valeurs abéranntes :l'utilisateur décide de garder ou supprimer la colonne 
       
       Identification et traitement des valeurs manquantes :
       
               Variable quantitative : moyenne , médiane ,interpolation ou suppression de la variable
               
               Variable qualitative:mode , dernière valeur rencontrée , suppression de la variable
               
        Normalisation des données  :Min_Max , Z_score
        
        Réequilibrage des données :over_sampling ,under_sampling
        
        Dummification des variables catégorielles
        
L'onglet Tests statistiques :

        Tests statistiques entre deux variables : A-D Test,Shapiro,KS-Test,MV-Shapiro
        
        Corrélation entre deux variables :Covariance,KarlPearson,Spearman,Kendals
        
Exploration de données :

        Summary détaillé du jeu de données 
        
        Heatmap de corrélation entre toute les variables du dataset importé
        
        Fouille des données : détailler les types des variables et leurs noms

L'onglet Analyse Univariée :

                Quantitative:
                
                    Numérique (caractéristiques de tendance centrale et de dispersion) : moyenne, écart-type, variance, minimum, Q1, médiane, Q3, maximum
                    
                    Histogramme des éffectifs
                    
                    Boîte à moustache
                    
                    Diagramme de battons des éffectifs
                    
                    Courbe cumulative
                    
                Qualitative:
                
                    Numérique : modalités, effectifs, proportions 
                    
                    Diagramme en barres : en effectifs ou en proportions
                    
  L'onglet Analyse Bivariée:
  
                2 Quantitatives:
                
                      Nuage de points
                      
                      Histogramme
                      
                      Histogramme dos a dos
                      
                2 Qualitatives:
                
                      Diagramme en barres : empilées ou séparées, en effectifs ou en fréquences
                      
                Quantitative vs qualitative :
                
                        Numérique : même informations que pour une variable quantitative, mais pour chaque modalité
                        
                        Histogramme
                        
                        Boîtes à moustaches
                       
                        Fréquences cumulées
                        
                        
 L'onglet Machine Learning :
 
        Le dataset choisi :Employee Attrition qui partie des datasets proposés dans le module de Machine Learning et comme on y est entrain de travailler avec le language Python, on s'est dit pourquoi pas faire son équivalent en language R pour faire l'équilibre entre les deux languages .En effet , on estime que notre choix est bon car il nous permis de faire le lien entre les différentes fonctions d'apprentissage automatique de Python et R .
        
        les modéles choisis : Random Forest ,Decision Tree , Logistic Regression , Naive Bayes ,LDA,KNN et SVM 
        
        pour chaque modéle , on calcule Precision , Recall et F-score , courbe PR et auc selon la précision et le Recall déja calculés
        
        A paramétrer : la portion du Test et du Train set+ over_sampling ,under samling ou sans -sampling 
        
 L'onglet Features Selection :
 
       Pour chaque modéle cité précédemment , on essaye de générer un summary (statistiques) sur l'étape d'apprentissage du modéle sur nos données , pour détérminer le poids que chaque Feature dans ce modéle et puis décider des variables les plus discriminantes (explicatives ou importantes).
        

