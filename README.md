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
