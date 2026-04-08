# The Big Project

Application web de potins construite avec Ruby on Rails dans le cadre d'une formation développement web.

## Description

The Big Project est une application Rails full-stack permettant à des utilisateurs de partager et consulter des potins. Le projet illustre les bases du framework Rails : architecture MVC, routing, controllers, views, models et associations ActiveRecord.

## Fonctionnalités

- Page d'accueil affichant tous les potins sous forme de cards Bootstrap
- Page détail d'un potin avec titre, contenu, date de création et lien vers l'auteur
- Page profil utilisateur avec ses informations
- Landing page personnalisée en fonction du prénom passé dans l'URL
- Pages statiques : Team et Contact
- Header de navigation présent sur toutes les pages
- Interface responsive grâce à Bootstrap 5

## Architecture MVC
the-big-project/
├── app/
│   ├── controllers/
│   │   ├── pages_controller.rb
│   │   ├── gossips_controller.rb
│   │   └── users_controller.rb
│   ├── models/
│   │   ├── user.rb
│   │   └── gossip.rb
│   └── views/
│       ├── layouts/application.html.erb
│       ├── pages/
│       ├── gossips/
│       └── users/
├── config/
│   └── routes.rb
└── db/
└── seeds.rb

## Technologies utilisées

- Ruby 3.2.3
- Rails 7.1.6
- PostgreSQL
- Bootstrap 5
- ERB (Embedded Ruby)
- Puma (serveur web)

## Installation

1. Cloner le projet :

```bash
git clone https://github.com/DickoElhadjSekou4/the-big-project.git
cd the-big-project
```

2. Installer les dépendances :

```bash
bundle config set --local path 'vendor/bundle'
bundle install
```

3. Démarrer PostgreSQL :

```bash
sudo service postgresql start
```

4. Créer et alimenter la base de données :

```bash
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed
```

5. Lancer le serveur :

```bash
bundle exec rails server
```

6. Ouvrir dans le navigateur :
http://localhost:3000

## Routes

| Verbe | URL | Controller#Action | Description |
|-------|-----|-------------------|-------------|
| GET | / | pages#home | Page d'accueil |
| GET | /team | pages#team | Page équipe |
| GET | /contact | pages#contact | Page contact |
| GET | /welcome/:first_name | pages#welcome | Landing page personnalisée |
| GET | /gossips | gossips#index | Liste des potins |
| GET | /gossips/:id | gossips#show | Détail d'un potin |
| GET | /users/:id | users#show | Profil utilisateur |

## Modèles et associations

Un utilisateur (User) peut avoir plusieurs potins (Gossip).
Un potin (Gossip) appartient à un utilisateur via author_id.

```ruby
class User < ApplicationRecord
  has_many :gossips, foreign_key: :author_id
end

class Gossip < ApplicationRecord
  belongs_to :author, class_name: "User"
end
```

## Auteur

Elhadj Sekou Dicko — Formation Rails 2026
