param(
    [string]$Token = $env:GITHUB_TOKEN,
    [string]$RepoName = "rtl-lite-cv",
    [string]$Visibility = "public"
)

if (-not $Token) {
    Write-Host "A GitHub Personal Access Token is required. Pass it with -Token or set env var GITHUB_TOKEN." -ForegroundColor Yellow
    exit 1
}

$headers = @{ Authorization = "token $Token"; "User-Agent" = "publish-script" }
$body = @{ name = $RepoName; private = ($Visibility -eq 'private') } | ConvertTo-Json

# Create the repo
$response = Invoke-RestMethod -Method POST -Uri https://api.github.com/user/repos -Headers $headers -Body $body -ErrorAction SilentlyContinue
if ($null -eq $response) {
    Write-Host "Failed to create repo. It may already exist or the token lacks permissions." -ForegroundColor Red
    exit 1
}

$remoteUrl = $response.clone_url
Write-Host "Created repo: $($response.full_name) -> $remoteUrl"

# Add remote, push
git remote remove origin -ErrorAction SilentlyContinue
git remote add origin $remoteUrl
git branch -M main
Write-Host "Pushing to origin/main..."
git push -u origin main

Write-Host "Done." -ForegroundColor Green
