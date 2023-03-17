# DDEV tools

![project is maintained](https://img.shields.io/maintenance/yes/2023.svg)
[![Version](https://img.shields.io/github/v/release/julienloizelet/ddev-tools?include_prereleases)](https://github.com/julienloizelet/ddev-tools/releases)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**

- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
  - [Work on a Magento 2 / Mage-OS module](#work-on-a-magento-2--mage-os-module)
    - [Prepare DDEV environment](#prepare-ddev-environment)
      - [Create a Magento 2 DDEV project](#create-a-magento-2-ddev-project)
      - [Install tools add-on and copy some files](#install-tools-add-on-and-copy-some-files)
    - [Magento 2 installation](#magento-2-installation)
    - [Set up Magento 2](#set-up-magento-2)
    - [Configure Magento 2 for local development](#configure-magento-2-for-local-development)
    - [Install your module](#install-your-module)
  - [Work on a WordPress plugin](#work-on-a-wordpress-plugin)
    - [Prepare DDEV environment](#prepare-ddev-environment-1)
      - [Create a WordPress DDEV project](#create-a-wordpress-ddev-project)
      - [Install tools add-on and copy some files](#install-tools-add-on-and-copy-some-files-1)
    - [WordPress installation](#wordpress-installation)
    - [Set up WordPress](#set-up-wordpress)
    - [Install your plugin](#install-your-plugin)
- [License](#license)
- [Contribute](#contribute)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Requirements

This add-on depends on [DDEV](https://ddev.readthedocs.io/en/stable/).


## Introduction

The purpose of this DDEV add-on is to share my development DDEV's tools.

I mainly use it to work on Magento 2 modules, WordPress plugins and other PHP projects.


## Installation

`ddev get julienloizelet/ddev-tools`


## Usage

### Work on a Magento 2 / Mage-OS module

#### Prepare DDEV environment

The final structure of the project will look like below.

```
m2-sources
│   
│ (Magento 2 sources installed with composer)    
│
└───.ddev
│   │   
│   │ (DDEV files)
│   
└───my-own-modules
    │   
    │
    └───yourVendorName-yourModuleName
       │   
       │ (Sources of a module)
         
```


##### Create a Magento 2 DDEV project

```bash
mkdir m2-sources && cd m2-sources
ddev config --project-type=magento2 --project-name=your-project-name --php-version=8.1 --docroot=pub --create-docroot --disable-settings-management
```


##### Install tools add-on and copy some files

```bash
ddev get julienloizelet/ddev-tools
ddev get ddev/ddev-elasticsearch
ddev start
```


#### Magento 2 installation
You will need your Magento 2 credentials to install the source code.

     ddev composer create --repository=https://repo.magento.com/ magento/project-community-edition -y


#### Set up Magento 2

     ddev magento setup:install \
                           --base-url=https://your-project-name.ddev.site \
                           --db-host=db \
                           --db-name=db \
                           --db-user=db \
                           --db-password=db \
                           --backend-frontname=admin \
                           --admin-firstname=admin \
                           --admin-lastname=admin \
                           --admin-email=admin@admin.com \
                           --admin-user=**** \
                           --admin-password=**** \
                           --language=en_US \
                           --currency=USD \
                           --timezone=America/Chicago \
                           --use-rewrites=1 \
                           --search-engine=elasticsearch7 \
                           --elasticsearch-host=elasticsearch

This should take ages.

#### Configure Magento 2 for local development

    ddev magento config:set admin/security/password_is_forced 0
    ddev magento config:set admin/security/password_lifetime 0
    ddev magento module:disable Magento_AdminAdobeImsTwoFactorAuth (Magento >= 2.4.6 only)
    ddev magento module:disable Magento_TwoFactorAuth
    ddev magento indexer:reindex
    ddev magento c:c

#### Install your module

```
cd m2-sources
mkdir -p my-own-modules/yourVendorName-yourModuleName
cd my-own-modules/yourVendorName-yourModuleName 
git clone git@github.com:yourGithubName/yourGithubModule.git ./
ddev composer config repositories.yourVendorName-yourModuleName path my-own-modules/yourVendorName-yourModuleName/
ddev composer require yourComposerModuleName:@dev
ddev magento module:enable yourVendorName_yourModuleName
ddev magento setup:upgrade
ddev magento cache:flush
```



### Work on a WordPress plugin

#### Prepare DDEV environment

The final structure of the project will look like below.

```
wp-sources
│   
│ (WordPress sources)    
│
└───.ddev
│   │   
│   │ (DDEV files)
│   
└───wp-content 
    │   
    │
    └───plugins
       │   
       │
       └───your-plugin-name (only if you want to test some of your plugin(s))
         
```


##### Create a WordPress DDEV project

```bash
mkdir wp-sources && cd wp-sources
ddev config --project-type=wordpress --project-name=your-project-name
```


##### Install tools add-on and copy some files

```bash
ddev get julienloizelet/ddev-tools
ddev start
```


#### WordPress installation

```bash
ddev wp core download
````


#### Set up WordPress

```bash
     ddev exec wp core install --url='https://your-project-name.ddev.site' --title='WordPress' --admin_user='****' 
--admin_password='****' --admin_email='admin@admin.com'
````

#### Install your plugin

```
cd wp-sources
mkdir -p wp-content/plugins/your-plugin-name && cd wp-content/plugins/your-plugin-name
git clone git@github.com:your-git-repo/your-plugin-repo.git ./
```

## License

[MIT](LICENSE)


## Contribute

Anyone is welcome to submit a pull request to this repository.


**Contributed and maintained by [julienloizelet](https://github.com/julienloizelet)**

