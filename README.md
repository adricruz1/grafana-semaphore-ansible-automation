# 🚀 Automação de SecOps, Monitoramento e Resposta a Incidentes

Este repositório centraliza soluções de **SecOps, Infraestrutura como Código (IaC) e Automação de Resposta a Incidentes**, integrando ferramentas de monitoramento em tempo real, orquestração de playbooks e scripts de integração via API REST.

---

## 🛠️ Arquitetura e Tecnologias

* **Ansible / Ansible Semaphore:** Orquestração e execução automatizada de playbooks de segurança, remediação e auditoria em ambientes Windows e Linux.
* **Grafana:** Painéis de observabilidade (NOC) para monitoramento de métricas e gatilhos operacionais.
* **PowerShell:** Automação de tarefas nativas do Windows, auditoria de patches e consumo de APIs REST.

---

## 📂 Estrutura do Repositório

```text
.
├── ansible/
│   └── playbooks/
│       ├── auditar_windows.yml          # Auditoria de atualizações e patches pendentes
│       ├── corrigir_monitoramento.yml   # Correção e restauração de agentes de monitoramento
│       ├── instalar_monitoramento.yml   # Deploy automatizado de agentes de observabilidade
│       └── verificar_antivirus.yml      # Verificação de status e conformidade de antivírus
├── grafana/
│   └── dashboards/
│       └── windows_noc.json             # Exportação JSON do painel de monitoramento e NOC
└── scripts/
    └── api_trigger.ps1                  # Script de integração para disparo de tarefas via API REST do Semaphore
