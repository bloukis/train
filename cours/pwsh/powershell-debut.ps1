$chiffre1 = 1
$chiffre2 = 5.8
$resultats = $chiffre1 + $chiffre2

if ($resultats -gt 100) {
    Write-Host "Incroyable"
}
elseif ($resultats -gt 5.8) {
    Write-Host "Le résultat dépasse 5.8"
}
elseif ($resultats -eq 5.8) {
    Write-Host "Le résultat est exactement 5.8"
}
else {
    Write-Host "Le résultat est : $resultats"
}