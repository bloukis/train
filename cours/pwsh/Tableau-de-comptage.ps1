<#
.SYNOPSIS
   Faire un tableau explicatif avec plusieurs paramètres 

.DESCRIPTION
    a partir d'un csv extraire les donnée et faire le compte sur plusieur parametre 
    ( nombre par deparement , true et false , numbre de users )
.PARAMETER CsvPath
    Dois aller chercher le fichier à la racine 

.PARAMETER Delimiter
    Délimiteur du CSV. Défaut : ','.

.PARAMETER ExportPath
    Chemin de sortie pour exporter le rapport en CSV (UTF-8, sans BOM via -Encoding UTF8).

.EXAMPLE
    .\Get-UsersByDepartment.ps1 -CsvPath .\users.csv

.EXAMPLE
    .\Get-UsersByDepartment.ps1 -CsvPath .\users.csv -Delimiter ';' -ExportPath .\report.csv

.INPUTS
    System.String (chemin CSV).

.OUTPUTS
    System.Management.Automation.PSCustomObject[]

.NOTES
    Auteur  : François Vachon
    Date    : 2026-06-28
    Version : 1.0.0s
    Requis  : PowerShell 5.1+ ou PowerShell 7+

#>
param(
    [Parameter()]
    [string]$CsvPath = "f:\github\train\cours\pwsh\Tableau.csv"
)
#$liste | Group-Object Department | Select-Object Name, Count, @{N="FirstNames"; E={$_.Group.FirstName -join ", "}}, @{N="IsActive"; E={$_.Group.IsActive -join ", "}}
#Export-Csv -path $CsvPaths

$user = Import-csv -path $CsvPath
Write-host "$user"






