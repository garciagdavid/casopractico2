ansible-playbook -i hosts 00-playbook-all-nodes.yml
ansible-playbook -i hosts 01-playbook-nfs.yml
ansible-playbook -i hosts 02-playbook-workers_master.yml
ansible-playbook -i hosts 03-playbook-master.yml
ansible-playbook -i hosts 04-playbook-workers.yml
ansible-playbook -i hosts 05-deploy-app.yml