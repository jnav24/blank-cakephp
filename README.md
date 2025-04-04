# CakePHP

### Description

This project was created by creating a Docker environment, then `docker exec -it` into the php container and running the following:

```shell
composer create-project --prefer-dist cakephp/cakephp:~2.10.24
```

Then move the files as needed.

### Set Up Instructions

This project is built using Docker. Ensure that Docker is set up before continuing. 

```shell
docker compose build
docker compose up

# Install dependencies
docker exec blank-cakephp-php-1 composer install
# OR
docker compose exec php composer install
```

### Setup DebugKit

[Instructions](https://github.com/cakephp/debug_kit/tree/2.2?tab=readme-ov-file)

Install

```shell
# in the app/Plugin directory
git clone --single-branch --branch 2.2 git://github.com/cakephp/debug_kit.git DebugKit
```

If git clone does not work

- manual download [here](https://github.com/cakephp/debug_kit/zipball/2.2)
- unzip the contents
- rename directory `DebugKit`
- move the directory to `app/Plugin`

Setup

- Add `app\Plugin` to `.gitignore`
- create a directory inside `app/webroot` called `debug_kit`
- copy the `css`, `js`, and `img` directories from `app/Plugin/DebugKit/webroot`
- paste those directories into `app/webroot/debug_kit`

You can view the project in the browser [localhost:8080](http://localhost:8080/)

### Cake CLI

To run cake commands

```shell
chmod +x app/Console/cake
docker exec blank-cakephp-php-1 app/Console/cake schema generate
docker exec blank-cakephp-php-1 app/Console/cake bake
```

### Extras

[![Latest Stable Version](https://poser.pugx.org/cakephp/cakephp/v/stable.svg)](https://packagist.org/packages/cakephp/cakephp)
[![License](https://poser.pugx.org/cakephp/cakephp/license.svg)](https://packagist.org/packages/cakephp/cakephp)
[![Bake Status](https://secure.travis-ci.org/cakephp/cakephp.png?branch=master)](https://travis-ci.org/cakephp/cakephp)
[![Code consistency](https://squizlabs.github.io/PHP_CodeSniffer/analysis/cakephp/cakephp/grade.svg)](https://squizlabs.github.io/PHP_CodeSniffer/analysis/cakephp/cakephp/)

CakePHP is a rapid development framework for PHP which uses commonly known design patterns like Active Record, Association Data Mapping, Front Controller and MVC.
Our primary goal is to provide a structured framework that enables PHP users at all levels to rapidly develop robust web applications, without any loss to flexibility.


## Some Handy Links

[CakePHP](https://cakephp.org) - The rapid development PHP framework

[CookBook](https://book.cakephp.org) - THE CakePHP user documentation; start learning here!

[API](https://api.cakephp.org) - A reference to CakePHP's classes

[Plugins](https://plugins.cakephp.org) - A repository of extensions to the framework

[The Bakery](https://bakery.cakephp.org) - Tips, tutorials and articles

[Community Center](https://community.cakephp.org) - A source for everything community related

[Training](https://training.cakephp.org) - Join a live session and get skilled with the framework

[CakeFest](https://cakefest.org) - Don't miss our annual CakePHP conference

[Cake Software Foundation](https://cakefoundation.org) - Promoting development related to CakePHP


## Get Support!

[#cakephp](https://webchat.freenode.net/?channels=#cakephp) on irc.freenode.net - Come chat with us, we have cake

[Google Group](https://groups.google.com/group/cake-php) - Community mailing list and forum

[GitHub Issues](https://github.com/cakephp/cakephp/issues) - Got issues? Please tell us!

[Roadmaps](https://github.com/cakephp/cakephp/wiki#roadmaps) - Want to contribute? Get involved!


## Contributing

[CONTRIBUTING.md](CONTRIBUTING.md) - Quick pointers for contributing to the CakePHP project

[CookBook "Contributing" Section (2.x)](https://book.cakephp.org/2.0/en/contributing.html) [(3.x)](https://book.cakephp.org/3.0/en/contributing.html) - Version-specific details about contributing to the project
