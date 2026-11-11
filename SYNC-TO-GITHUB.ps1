$ErrorActionPreference = 'Stop'
$sourceRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoUrl = 'https://github.com/kosandra0/Animated-Cursor-Library.git'
$repoFullName = 'kosandra0/Animated-Cursor-Library'

Write-Host ''
Write-Host 'ANIMATED CURSOR LIBRARY - FULL GITHUB SYNC' -ForegroundColor Cyan
Write-Host "Target: https://github.com/$repoFullName" -ForegroundColor Gray
Write-Host 'This sync copies ANI files, ZIPs, previews, source archives, and documentation.' -ForegroundColor Gray

foreach ($tool in @('git', 'gh')) {
    if (-not (Get-Command $tool -ErrorAction SilentlyContinue)) {
        throw "'$tool' was not found. Install Git for Windows and GitHub CLI, then retry."
    }
}

gh auth status | Out-Host
if ($LASTEXITCODE -ne 0) { throw 'GitHub CLI is not authenticated. Run: gh auth login' }

$login = (gh api user --jq .login).Trim()
if ($LASTEXITCODE -ne 0 -or -not $login) { throw 'Could not read the authenticated GitHub account.' }
if ($login -ne 'kosandra0') {
    throw "Authenticated as '$login', but this repository belongs to 'kosandra0'. Sign in to the correct account with gh auth login."
}

$confirm = Read-Host "Type SYNC to copy this full folder into $repoFullName and push it"
if ($confirm -cne 'SYNC') { throw 'Sync cancelled; nothing was pushed.' }

$tempRoot = Join-Path $env:TEMP ('Animated-Cursor-Library-Sync-' + [guid]::NewGuid().ToString('N'))
$clonePath = Join-Path $tempRoot 'repo'
New-Item -ItemType Directory -Path $tempRoot -Force | Out-Null

try {
    git clone $repoUrl $clonePath
    if ($LASTEXITCODE -ne 0) { throw 'Could not clone the existing GitHub repository.' }

    # Copy all source files, excluding a local .git folder if one exists.
    robocopy $sourceRoot $clonePath /E /COPY:DAT /DCOPY:DAT /R:2 /W:1 /XD (Join-Path $sourceRoot '.git') /XF '*.tmp' '*.log'
    $copyCode = $LASTEXITCODE
    if ($copyCode -ge 8) { throw "Robocopy failed with exit code $copyCode." }

    Push-Location $clonePath
    try {
        git add --all
        if ($LASTEXITCODE -ne 0) { throw 'git add failed.' }

        git diff --cached --quiet
        $diffCode = $LASTEXITCODE
        if ($diffCode -eq 1) {
            $name = git config user.name
            $email = git config user.email
            if (-not $name) { $name = Read-Host 'Git commit author name'; git config user.name $name }
            if (-not $email) { $email = Read-Host 'Git commit author email'; git config user.email $email }
            if (-not $name -or -not $email) { throw 'Git commit author name and email are required.' }

            git commit -m 'Add complete animated cursor collections and assets'
            if ($LASTEXITCODE -ne 0) { throw 'git commit failed.' }

            git push origin main
            if ($LASTEXITCODE -ne 0) { throw 'git push failed. Check network access, authentication, and GitHub file-size limits.' }
        } elseif ($diffCode -eq 0) {
            Write-Host 'GitHub already matches this local folder; no new commit was needed.' -ForegroundColor Yellow
        } else {
            throw 'Could not inspect staged changes.'
        }
    } finally {
        Pop-Location
    }

    Write-Host ''
    Write-Host 'Full local cursor library sync completed.' -ForegroundColor Green
    Write-Host "https://github.com/$repoFullName" -ForegroundColor Cyan
} finally {
    if (Test-Path -LiteralPath $tempRoot) {
        Remove-Item -LiteralPath $tempRoot -Recurse -Force -ErrorAction SilentlyContinue
    }
}
