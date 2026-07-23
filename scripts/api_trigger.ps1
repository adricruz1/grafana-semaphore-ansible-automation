# Script de Exemplo: Disparo de Playbook via API do Semaphore a partir de um Painel
$headers = @{ 
    "Authorization" = "Bearer SEU_TOKEN_DE_API_AQUI" 
}

$url = "http://SEU_IP_DO_SEMAPHORE:3001/api/project/1/tasks"

# Define o template_id do playbook que deseja acionar (ex: template 6 para limpeza/tarefas)
$body = @{ 
    template_id = 6 
} | ConvertTo-Json

# Dispara a requisição POST assíncrona para o Semaphore enfileirar a execução
Invoke-RestMethod -Uri $url -Method Post -Headers $headers -Body $body -ContentType "application/json"
