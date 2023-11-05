Add-Type -AssemblyName System.Windows.Forms
$folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
$folderBrowser.RootFolder = [System.Environment+SpecialFolder]::Desktop

if ($folderBrowser.ShowDialog() -eq 'OK') {
    $folderBrowser.SelectedPath -replace '\\', '/'
}
