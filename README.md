## Ansible Infrastructure Deployment

### Описание проекта

Этот проект представляет собой решение для развертывания инфраструктуры с использованием Ansible. Основная цель - автоматизировать процесс установки необходимых компонентов на облачном дистрибутиве Linux, включая Docker, Docker-compose, Git, GitLab Runner и traceroute.

### Шаги выполнения

1. **Клонирование репозитория**: Склонируйте данный репозиторий на целевую машину, где планируется развертывание инфраструктуры.

2. **Установка Ansible**: Убедитесь, что на вашей машине установлен Ansible. Если нет, установите его с помощью следующей команды:
    ```bash
    sudo apt update
    sudo apt install ansible -y
    ```

3. **Запуск Ansible playbook**: Запустите Ansible playbook `playbook.yml`, который автоматически установит все необходимые пакеты. Для этого выполните следующую команду:
    ```bash
    ansible-playbook -i "localhost," -c local playbook.yml
    ```

4. **Регистрация GitLab Runner**: После выполнения playbook, запустите скрипт регистрации GitLab Runner `register_gitlab_runner.sh` с необходимыми параметрами. Например:
    ```bash
    ./register_gitlab_runner.sh my-runner MY_RUNNER_TOKEN my-tag
    ```

### Примеры команд

```bash
git clone https://github.com/<your_username>/ansible-infrastructure-deployment.git
cd ansible-infrastructure-deployment
ansible-playbook -i "localhost," -c local playbook.yml
./register_gitlab_runner.sh my-runner MY_RUNNER_TOKEN my-tag
```
