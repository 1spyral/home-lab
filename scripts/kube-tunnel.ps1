param(
    [Parameter(Mandatory = $true)]
    [Alias("h")]
    [string]$Server,             # server IP or DNS

    [Parameter(Mandatory = $true)]
    [Alias("u")]
    [string]$User,               # SSH username

    [Alias("p")]
    [int]$Port = 22,             # SSH port (default 22)

    [Alias("i")]
    [string]$IdentityFile,       # optional: path to SSH key

    [Alias("lp")]
    [int]$LocalPort = 6443,      # local port (default 6443)

    [Alias("rp")]
    [int]$RemotePort = 6443      # remote API port (default 6443)
)

# Ensure ssh exists
try {
    $null = Get-Command ssh -ErrorAction Stop
} catch {
    Write-Error "OpenSSH not found. Install via Windows Optional Features or Chocolatey."
    exit 1
}

# Build SSH arguments
$sshArgs = @(
    '-vv',
    '-N',
    '-L', "$LocalPort`:127.0.0.1`:$RemotePort",
    '-p', $Port.ToString(),
    '-o', 'ExitOnForwardFailure=yes',
    '-o', 'ServerAliveInterval=60',
    '-o', 'ServerAliveCountMax=3'
)

if ($IdentityFile) {
    $sshArgs += @('-i', $IdentityFile)
}

$target = "$User@$Server"

Write-Host "Starting SSH tunnel to $target ..."
Write-Host "Local  https://127.0.0.1:${LocalPort}  ->  ${Server}:${RemotePort} over SSH port ${Port}"
Write-Host "Press Ctrl+C to stop.`n"

# Run ssh in current terminal
& ssh @sshArgs $target
