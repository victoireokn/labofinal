# Listes de joueurs par poste
$gardiens = @("Neuer", "Courtois", "Alisson", "Oblak")
$defenseurs = @("Ramos", "Van Dijk", "De Ligt", "Ruben Dias", "Alaba", "Saliba", "Varane")
$milieux = @("Modric", "De Bruyne", "Kante", "Pogba", "Kroos", "Pedri", "Rodri")
$attaquants = @("Messi", "Ronaldo", "Neymar", "Mbappé", "Lewandowski", "Benzema", "Haaland")

# 1 gardien
$gardienSelectionne = $gardiens | Get-Random

# 4 défenseurs 
$defenseursSelectionnes = $defenseurs | Get-Random -Count 4

#3 milieux 
$milieuxSelectionnes = $milieux | Get-Random -Count 3

# 3 attaquants 
$attaquantsSelectionnes = $attaquants | Get-Random -Count 3

# composition de l'équipe
Write-Output "Ta composition d'equipe :"
Write-Output "Gardien : $gardienSelectionne"
Write-Output "Défenseurs : $($defenseursSelectionnes -join ', ')"
Write-Output "Milieux : $($milieuxSelectionnes -join ', ')"
Write-Output "Attaquants : $($attaquantsSelectionnes -join ', ')"