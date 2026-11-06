# 🛡️ Checklist de Reforço de Sistemas (Hardening) por Função

O processo de reforço envolve a redução do número de serviços em execução para minimizar vulnerabilidades, equilibrando a segurança com a usabilidade[cite: 64].

---

## 🖥️ 1. Servidor Web
* **Análise e Perímetro:** Inspeção rigorosa da zona de perímetro[cite: 73].
* **Monitoramento:** Vigilância constante contra malware, manipulação de dados (*tampering*) e outros exploits[cite: 73].
* **Patches:** Atualização regular do servidor HTTP (Apache/Nginx) e do sistema operacional.

---

## 🗄️ 2. Servidor de Banco de Dados
* **Hardening do SO:** Aplicação rigorosa de patches no sistema operativo subjacente[cite: 73].
* **Criptografia:** Proteção de dados em repouso e em trânsito no banco de dados[cite: 73].
* **Permissões e Hash:** Ativação de hash de integridade e restrição estrita de privilégios de acesso[cite: 73].

---

## 📁 3. Servidor FTP
* **Modo Anônimo:** Desativação completa do acesso anônimo[cite: 74].
* **Criptografia:** Proibição de transmissão de dados em texto claro (uso de SFTP/FTPS)[cite: 74].
* **Isolamento:** Isolamento de pastas e aplicação estrita de permissões de diretório[cite: 74].

---

## 🌐 4. Servidor DNS
* **Segurança:** Utilização de extensões de segurança **DNSSEC** com servidores confiáveis[cite: 75].
* **Cache:** Correção de vulnerabilidades de cache gravável para mitigar ataques de *pharming*[cite: 75].
