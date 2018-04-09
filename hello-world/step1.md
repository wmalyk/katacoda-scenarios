Starting Enviornment

`download sources` 

http://99.252.147.90:8075/UseCase.pdf

http://99.252.147.90:8075/EWebScenario-AppManagerIntro-Resources.zip

try here: https://[[HOST_SUBDOMAIN]]-8076-[[KATACODA_HOST]].environments.katacoda.com/

## Install Dependencies

First use **yum** to install dependencies

`yum install vim`{{execute}}

`yum install zip`{{execute}}

`yum install jdk jre`{{execute}}

We will use the Casandra DB for this example

`yum install dsc20`{{execute}}


## Fetch Packages

Next we will run the **wget** to fetch an initial package for deploy

`wget http://enterpriseweb.com/minimal.zip`{{execute}}
