## Onboard Your First Code Package

*In this scenario we will onboard a "Accounting Portal" as an example of a Code Package (i.e. application) which EnterpriseWeb will deploy, configure and manage as a part of larger end-to-end services.*

## Creating a new Package

- use the navigation at the bottom of the page to go to the `Connect` page

- select your action - `Onboard Utility`

- enter the name - `Accounting Portal`{{copy}}

- press the `Create Connection` button.

*The system will now launch an interactive form to collect the rest of the information about the component.*

## Completing the Package Model - Properties

Start by modelling the basic paramters that will be used by the utility when it is deployed.

- Navigate to the `Properties` tab

- Use the `Add` button and populate following attributes

  - `param/host_name`{{copy}} / `Host Name`{{copy}} / `Yes` / `malyk.net`{{copy}} 
  
  - `param/header_graphic`{{copy}} / `Header Image Path`{{copy}} / `Yes` / `http://enterpriseweb.com/wp-content/uploads/2015/11/logo.png`{{copy}} 
  
  - `param/source_endpoint`{{copy}} / `API Path`{{copy}} / `Yes` / `/api/accounting/Journals`{{copy}} 

*These will be substituted into the various artifacts used by the system when deploying and operating this utility*

## Completing the Package Model - Relationships

Next we will uplaod and map the artifacts (code, configuration files, etc.) used to provide the functionality for portal.

- Navigate to the `Relationships` tab, and then to the `Artifacts` subtab

- Notice there is already a Linux Image which will be used as a base. We will keep it, this is where our artifacts will eventually be deployed when a container or VM is created.

- Use the `Upload` button and upload each of the files from the EWebScenario-AppManagerIntro-Resources zip file you had downloaded earlier.

- Tag the type of each as follows (you are mapping each provided attribute to a Type in EnterpriseWeb, it will do the rest).
  
  - `deploy.sh`, **type = `Script`** 
  
  - `custom.css`, **type = `Resource`** 
  
  - `resources.zip`, **type = `Resource`** 
    
  - `index.html`, **type = `Resource`** 

## Completing the Package Model - Plans

Finally, we will supply any plans for the lifecycle and operations of this utility.

- Navigate to the `Plans` tab

- We only want to specify a plan for the `Instantiate` operation at this time (you can proceed to include other operations and model them in EnterpriseWeb).

- Use the `Provided By` drop-down - this allows to direct EnterpriseWeb on where this plan will come from. We will simply tell it to execute the script you uploaded earlier at this time - select `script: deploy.sh`.

## Submit to the Catalog

We have completed our model, there is more to explore, but this is enough information for the system to deploy this Portal for our use.

Press the `Add to Catalog` button to complete the model and register it in the system.
