# Listes de joueurs par poste
$gardiens = @("Neuer", "Courtois", "Alisson", "Oblak")
$defenseurs = @("Ramos", "Van Dijk", "De Ligt", "Ruben Dias", "Alaba", "Saliba", "Varane")
$milieux = @("Modric", "De Bruyne", "Kante", "Pogba", "Kroos", "Pedri", "Rodri")
$attaquants = @("Messi", "Ronaldo", "Neymar", "Mbappé", "Lewandowski", "Benzema", "Haaland")

# Sélectionner un capitaine aléatoire
$capitaine = $attaquants | Get-Random

# 1 gardien pour l'équipe
$gardienSelectionne = $gardiens | Get-Random

# 4 défenseurs pour l'équipe
$defenseursSelectionnes = $defenseurs | Get-Random -Count 4

# 3 milieux pour l'équipe
$milieuxSelectionnes = $milieux | Get-Random -Count 3

# 3 attaquants pour l'équipe
$attaquantsSelectionnes = $attaquants | Get-Random -Count 3

# Composition de l'équipe
Write-Output "Ta composition d'equipe :"
Write-Output "Capitaine : $capitaine"
Write-Output "Gardien : $gardienSelectionne"
Write-Output "Défenseurs : $($defenseursSelectionnes -join ', ')"
Write-Output "Milieux : $($milieuxSelectionnes -join ', ')"
Write-Output "Attaquants : $($attaquantsSelectionnes -join ', ')"
