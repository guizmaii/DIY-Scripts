function isNumeric ($value) {
    $x2 = 0
    $isNum = [System.Int32]::TryParse($value, [ref]$x2)
    return $isNum
}

shutdown.exe /a
$t = "valeur merdique servant uniquement à ce que $t ne soit pas numérique"
$isNum = isNumeric -value $t
while(! $isNum ){
	$t = Read-Host "Dans combien de minutes l'ordinateur doit-il s'éteindre"
	$isNUm = isNumeric -value $t
}
shutdown.exe /s /t (60 * $t)
