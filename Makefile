.PHONY: lint provision platform demo kubeconfig

lint:
    ansible-lint infra/ansible/playbooks/site.yml
    helm lint k8s/charts/demo-app

provision:
    cd infra/ansible && ansible-playbook -i inventories/prod/hosts.ini playbooks/site.yml

platform:
    cd infra/ansible && ansible-playbook -i inventories/prod/hosts.ini playbooks/platform.yml

demo:
    helm upgrade --install demo k8s/charts/demo-app -n apps --create-namespace --atomic --wait

kubeconfig:
    bash infra/scripts/fetch_kubeconfig.sh
