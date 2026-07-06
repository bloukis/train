param(
    [Parameter()]
    [string]$CsvPath = "F:\github\train\cours\pwsh\Tableau.csv"
)
function Write-Log {
    param(
        [Parameter(Mandatory)]
        [string]$Message,
        [ValidateSet('INFO','SUCCESS','WARNING','ERROR')]
        [string]$Level = 'INFO'
    )
    $ts = (Get-Date).ToString('yyyy-MM-dd HH:mm:ss')
    $color = switch ($Level) {
        'SUCCESS' { 'Green' }
        'WARNING' { 'Yellow' }
        'ERROR'   { 'Red' }
        default   { 'Cyan' }
    }
    Write-Host "[$ts] [$Level] $Message" -ForegroundColor $color
}
$question1 = Read-Host " le quoi ? "

Write-Log "Lecture du fichier : $CsvPath"

$users = Import-Csv -Path $CsvPath
 
Write-Log "$($users.Count) utilisateur(s) chargé(s)" -Level SUCCESS