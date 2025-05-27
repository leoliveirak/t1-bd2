# Solicita a senha do usuário uma única vez
$senha = Read-Host -AsSecureString "Digite a senha do usuario postgreSQL"
$senhaTexto = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($senha))
# Configurações :)
$env:PGHOST = "localhost"
$env:PGPORT = "5432"
$env:PGDATABASE = "DATABASE"
$env:PGUSER = "USUÁRIO"
$env:PGPASSWORD = $senhaTexto

# Busca completa e cronológica
$comando = @"
	SELECT l.log_id, l.acao, l.operation_id, l.nome, l.saldo 
	FROM logs_operacao l 
	ORDER BY l.log_id
"@

$log = psql -t -A -F "|" -c $comando
<# 
-t -> Tira o cabeçalho 
-A -> Tira a formatação
-F -> Serve para separar os campos
-c -> Comando a ser executado
#>

# Variáveis de controle
$executarBloco = $false
$bloco = @()
$blocosValidos = @()
