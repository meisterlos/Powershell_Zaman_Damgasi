# Hedef dosya ve referans dosya yolları
# targetFilePath zaman damgası değiştirilecek olan dosyadır ve zaman damgasını referenceFilePath dosyasından alır.

$targetFilePath = ".\hedef2.txt"
$referenceFilePath = ".\test.c"

# Referans dosyanın zaman damgalarını al
$referenceFile = Get-Item $referenceFilePath
$lastWriteTime = $referenceFile.LastWriteTime
$lastAccessTime = $referenceFile.LastAccessTime
$creationTime = $referenceFile.CreationTime

# Hedef dosyanın zaman damgalarını değiştir
Set-ItemProperty -Path $targetFilePath -Name LastWriteTime -Value $lastWriteTime
Set-ItemProperty -Path $targetFilePath -Name LastAccessTime -Value $lastAccessTime
Set-ItemProperty -Path $targetFilePath -Name CreationTime -Value $creationTime