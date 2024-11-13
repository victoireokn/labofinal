# Listes de joueurs par poste
$gardiens = @("Neuer", "Courtois", "Alisson", "Oblak")
$defenseurs = @("Ramos", "Van Dijk", "De Ligt", "Ruben Dias", "Alaba", "Saliba", "Varane")
$milieux = @("Modric", "De Bruyne", "Kante", "Pogba", "Kroos", "Pedri", "Rodri")
$attaquants = @("Messi", "Ronaldo", "Neymar", "Mbappé", "Lewandowski", "Benzema", "Haaland")

# Sélectionner un capitaine aléatoire pour l'équipe 1
$capitaine = $attaquants | Get-Random

# Sélectionner 1 gardien pour l'équipe
$gardienSelectionne = $gardiens | Get-Random

# Sélectionner 4 défenseurs pour l'équipe
$defenseursSelectionnes = $defenseurs | Get-Random -Count 4

# Sélectionner 3 milieux pour l'équipe
$milieuxSelectionnes = $milieux | Get-Random -Count 3

# Sélectionner 3 attaquants pour l'équipe
$attaquantsSelectionnes = $attaquants | Get-Random -Count 3

# Composition de l'équipe 1
Write-Output "Equipe 1 :"
Write-Output "Capitaine : $capitaine"
Write-Output "Gardien : $gardienSelectionne"
Write-Output "Défenseurs : $($defenseursSelectionnes -join ', ')"
Write-Output "Milieux : $($milieuxSelectionnes -join ', ')"
Write-Output "Attaquants : $($attaquantsSelectionnes -join ', ')"

# Création de l'équipe adverse
$capitaineAdverse = $attaquants | Get-Random
$gardienAdverse = $gardiens | Get-Random
$defenseursAdverses = $defenseurs | Get-Random -Count 4
$milieuxAdverses = $milieux | Get-Random -Count 3
$attaquantsAdverses = $attaquants | Get-Random -Count 3

# Composition de l'équipe adverse
Write-Output "`nEquipe Adverse :"
Write-Output "Capitaine : $capitaineAdverse"
Write-Output "Gardien : $gardienAdverse"
Write-Output "Défenseurs : $($defenseursAdverses -join ', ')"
Write-Output "Milieux : $($milieuxAdverses -join ', ')"
Write-Output "Attaquants : $($attaquantsAdverses -join ', ')"

# Simulation du match
$scoreEquipe1 = Get-Random -Minimum 0 -Maximum 6
$scoreEquipe2 = Get-Random -Minimum 0 -Maximum 6

Write-Output "`n--- Résultat du match ---"
Write-Output "Score de l'Equipe 1 : $scoreEquipe1"
Write-Output "Score de l'Equipe Adverse : $scoreEquipe2"

if ($scoreEquipe1 -gt $scoreEquipe2) {
    Write-Output "L'Equipe 1 gagne !"
} elseif ($scoreEquipe1 -lt $scoreEquipe2) {
    Write-Output "L'Equipe Adverse gagne !"
} else {
    Write-Output "Match nul !"
}
