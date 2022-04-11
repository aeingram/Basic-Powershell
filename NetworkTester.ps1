function PingAndWrite {
    param(
        [String] $IP
        )
        ping -n 2 $IP | Tee-Object -Append "PingAttempt.txt"
}

[String[]] $IPS = @()

$IPS = Read-Host "Enter list of IPS"

$IPS = $IPS.Split(' ')
rm "PingAttempt.txt"
foreach($IP in $IPS)
{
    PingAndWrite($IP)
}