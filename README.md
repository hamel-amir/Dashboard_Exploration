# Dashboard_Exploration
Application web intéractive développée en langage R et la librairie shiny, qui permet le chargement des fichiers de données de différents formats,le prétraitement ,l'exploration et la visualisation des données, réalisation des calculs statistiques ainsi qu'une partie d'apprentissage automatique .Et donc cet outil se base sur deux axes :Analyse descriptive(Univariée et Bivariée) et explicative des données (des modéles de machine Learning)

Importation du fichier de données :

           Importataion de différents types de fichiers (csv,txt,xlsx,data...) avec différents séparateurs (virgule,espace,tabulation,point,point-virgule)
           
L'onglet Dataset :
           Affichage de la table de données avec le nombre de lignes et de colonnes 
           
L'onglet prétraitement de données : c'est l'ensemble de méthodes ou de processus de traitement de données brutes afin de les rendre fiables ,exploitables et utiles  dans des éventuels modéles d'apprentissage automatique .

       Identification et traitement des valeurs abéranntes :l'utilisateur décide de garder ou supprimer l'observation
       
       Identification et traitement des valeurs manquantes :
       
               Variable quantitative : moyenne , médiane ,interpolation ou suppression de la variable
               
               Variable qualitative:mode , dernière valeur rencontrée , suppression de la variable
               
        Normalisation des données  :Min_Max , Z_score
        
        Réequilibrage des données :over_sampling ,under_sampling
        
        Dummification des variables catégorielles
        
Exploration des données :

        Summary détaillé du jeu de données 
        
        Heatmap de corrélation entre toute les variables du dataset importé
        
        Fouille des données : détail des types des variables et la possibiliter de les renommer 

        
L'onglet Tests statistiques sur les variables quantitatives:

        Tests statistiques: A-D Test,Shapiro,KS-Test,MV-Shapiro
        
        Corrélation:Covariance,KarlPearson,Spearman,Kendals
        

L'onglet Analyse Univariée :

                Quantitative:
                
                    Numérique (caractéristiques de tendance centrale et de dispersion) : moyenne, écart-type, variance, minimum, Q1, médiane, Q3, maximum
                    
                    Histogramme des éffectifs
                    
                    Boîte à moustache
                    
                    Diagramme de battons des éffectifs
                    
                    Courbe cumulative
                    
                Qualitative:
                
                    Numérique : modalités, effectifs, fréquences 
                    
                    Diagramme en secteurs
                    
                    Diagramme en colonnes 
                    
  L'onglet Analyse Bivariée:
  
                2 Quantitatives:
                
                      Nuage de points
                      
                      Histogramme
                      
                      Nuage de points et Histogramme
                      
                      Histogramme dos à dos
                      
                2 Qualitatives:
                
                      Diagramme en barres 
                      
                      Les indices Chi2(X2), Phi2 et Cramer
                      
                Quantitative vs qualitative :
                
                        Diagramme en barres
                        
                        Boite en paralléle
                        
                        
 L'onglet Machine Learning :
 
        Le dataset choisi :Employee Attrition qui fait partie des datasets proposés dans le module de Machine Learning et sur lequel entrain de travailler avec le langage Python, on s'est dit pourquoi pas faire son équivalent en langage R pour équilibrer entre les deux langages .En effet , on estime que notre choix est bon car il nous permet de faire le lien entre les différentes fonctions d'apprentissage automatique disponibles en Python et R .
        
        les modéles choisis : Random Forest ,Decision Tree , Logistic Regression , Naive Bayes ,LDA,KNN et SVM 
        
        pour chaque modéle , on calcule Precision , Recall et F-score , courbe PR et auc selon la précision et le Recall déja calculés
        
        A paramétrer : la portion du Test et du Train set+ over_sampling ,under samling ou sans-sampling 
        
 L'onglet Features Selection :
 
       Pour chaque modéle cité précédemment , on essaye de générer un summary (statistiques) sur l'étape d'apprentissage du modéle sur nos données , pour détérminer le poids de chaque Feature dans ce modéle et puis décider des variables les plus discriminantes (explicatives ou importantes).
        

