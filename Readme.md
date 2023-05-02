# DVAnsible
## Description

DVAnsible est un projet visant à réduire le temps de développement des rôles Ansible grâce à l'automatisation de la création de machines virtuelles. Cette automatisation est rendue possible par l'utilisation de technologies innovantes telles que Docker et Vagrant, qui permettent de réduire considérablement les cycles de construction/destruction de machine virtuel durant la phase de test.

## Prérequis
Assurez-vous d'avoir les versions suivantes installées sur votre machine :

- Ansible >= 2.14.5
- Docker >= 23.0.5
- Vagrant >= 2.2.14

## Installation
1. Clonez le repository `git clone https://github.com/medaey/DVAnsible.git`
2. Allez dans le dossier `cd DVAnsible`
3. Exécuter la commande  `docker build -t my-debian . && vagrant destroy -f && vagrant up`
4. Modifier le playbook ansible `playbook.yml`

## Utilisation

Recrée les container et appliquer le playbook ansible

```bash
docker build -t my-debian . && vagrant destroy -f && vagrant up
```

Appliquer le playbook ansible au container

```bash
vagrant provision
```

## Auteurs
Cossu Médéric

## Licence
Ce projet est sous licence MIT.
