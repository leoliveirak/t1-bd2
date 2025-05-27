# Solicita a senha do usuário uma única vez
$senha = Read-Host -AsSecureString "Digite a senha do usuario postgreSQL"
$senhaTexto = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($senha))
# Configurações :)
$env:PGHOST = "localhost"
$env:PGPORT = "5432"
$env:PGDATABASE = "DATABASE"
$env:PGUSER = "USUÁRIO"
$env:PGPASSWORD = $senhaTexto
