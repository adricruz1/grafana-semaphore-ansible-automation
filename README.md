# grafana-semaphore-ansible-automation

seu-repositorio/
├── README.md                      <-- Documentação principal (Cole o relatório gerado anteriormente aqui)
├── ansible/
│   ├── playbooks/
│   │   ├── limpar_temp.yml        <-- Playbook de limpeza de arquivos temporários
│   │   ├── auditar_updates.yml    <-- Playbook de checagem de atualizações
│   │   └── fix_monitoring.yml     <-- Playbook de correção do agente de monitoramento
│   └── inventory/
│       └── hosts.ini.example      <-- Modelo de inventário (sem IPs reais da empresa)
├── grafana/
│   └── dashboards/
│       └── windows_noc.json       <-- Exportação JSON limpa do seu dashboard do Grafana
└── scripts/
    └── api_trigger.ps1            <-- Script de exemplo em PowerShell usando a API REST

🔍 Descrição dos Módulos
1. Automação e Remediação (Ansible Playbooks)
Auditoria de Patches (auditar_windows.yml): Executa varreduras controladas em lotes (serial) com tratamento de timeout via jobs assíncronos em PowerShell, mapeando atualizações pendentes sem travar a fila de execução.

Segurança e Endpoint (verificar_antivirus.yml): Valida a saúde e o status operacional das soluções de proteção nos nós gerenciados.

Confiabilidade (corrigir_monitoramento.yml e instalar_monitoramento.yml): Garantem a resiliência da stack de observabilidade, automatizando o deploy e a autocorreção de agentes.

2. Integração e Disparo via API (scripts/api_trigger.ps1)
Script desenvolvido em PowerShell para comunicação automatizada com a API REST do Semaphore. Permite que alertas de painéis disparem orquestrações de forma reativa e assíncrona, enfileirando playbooks de remediação sob demanda.

3. Observabilidade (grafana/dashboards/windows_noc.json)
Modelo estruturado de painel voltado para operação centralizada (NOC), oferecendo visibilidade rápida sobre o estado dos servidores e métricas críticas de infraestrutura.
