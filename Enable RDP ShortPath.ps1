$regPath="HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations" 
if (-not (Test-Path $regPath)) { 
  New-Item -Path $regPath -Force -ErrorAction SilentlyContinue 
} 

New-ItemProperty -Path $regPath -Name "fUseUdpPortRedirector" -Value 1 -force 
New-ItemProperty -Path $regPath -Name "UdpPortNumber" -Value 3390 -force 

# Configuring RDS settings: Configuring Windows Firewall 
New-NetFirewallRule -DisplayName "Remote Desktop - Shortpath (UDP)"  -Action Allow -Description "Inbound rule for the Remote Desktop service to allow RDP traffic on UDP 3390" -Group "@FirewallAPI.dll,-28752" -Name 'RemoteDesktop-RDP-Shortpath-UDP'  -PolicyStore PersistentStore -Profile Any -Service TermService -Protocol udp -LocalPort 3390 -Program "%SystemRoot%\system32\svchost.exe" -Enabled:True -ErrorAction SilentlyContinue 
