$parts = Get-ChildItem "X1_WAVEO_PANEL_v1.4_PUBLIC_OBFUSCATED_RC.zip.b64.part*" | Sort-Object Name
$b64 = ($parts | ForEach-Object { Get-Content $_ -Raw }) -join ""
[IO.File]::WriteAllBytes("X1_WAVEO_PANEL_v1.4_PUBLIC_OBFUSCATED_RC.zip",[Convert]::FromBase64String($b64))
Get-FileHash "X1_WAVEO_PANEL_v1.4_PUBLIC_OBFUSCATED_RC.zip" -Algorithm SHA256
