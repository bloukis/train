param(
    [Parameter()]
    [string]$CsvPath = "F:\github\train\cours\pwsh\Tableau.csv",
    [Parameter()]
    [string]$Entreprise = "axa" 
)

function GMK {
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


GMK "Lecture du fichier  : $CsvPath" -Level WARNING

$users = Import-Csv -Path $CsvPath
 
GMK "$($users.Count) utilisateur(s) chargé(s)" -Level SUCCESS

GMK $Entreprise 