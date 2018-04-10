## Composing Your First Cloud Service

*In this scenario we will compose and deploy an end-to-end Service using the Task Manager*

## Create a New Service Composition

- use the navigation at the bottom of the page to go to the `Compose` page

- for Type select - `Cloud Service`

- enter the Name - `Secure Accounting Portal`{{copy}}

## Select your Components

First we will select the elements which will make up our Service:

- Use the `Add Package` button to add code packages (utilities, functions, etc) which EnterpriseWeb will deploy, add the following:

  - `EWeb API Gateway` (to provide as the main connection point for our service on the edge)

  - `Generic Firewall` (to protect the data inside our cloud)

  - `Accounting EAI Pipeline` (to provide the process/ mashup of service data to feed our portal)
  
  - `Accounting Portal` (to provide a user interface for our service)
  
  - Two Copies of `WAN-X` (so we can manage SDN level connectivity between the edge and core)
  
- Use the `Add Service` button to add connections to 3rd party services modeled in EWeb, so they can be used as part the Cloud Service:

  - `QuickBooks (Accounting)` (to provide basic accounting data in our portal)
  
  - `SalesForceCRM` (to cross reference customer information and account names to be displayed in the portal)

## Complete the specification of the Components

Next we will add details about each component. Rename and select Target Hosts (this determines where the Functions and Utilities will be deployed) as follows:

- `EWeb API Gateway`, Name = `API Gateway`{{copy}}, Target Host = `CORD Local Host`

- `Generic Firewall`, Name = `Firewall`{{copy}}, Target Host = `CORD Google Cloud`

- `Accounting EAI Pipeline`, Name = `Processing Pipeline`{{copy}}, Target Host = `CORD Google Cloud`
  
- `Accounting Portal`, Name = `Portal`{{copy}}, Target Host = `CORD Local Host`
  
- Copy 1 of `WAN-X`, Name = `SDN1`{{copy}}, Target Host = `CORD Local Host`
  
- Copy 2 of `WAN-X`, Name = `SDN2`{{copy}}, Target Host = `CORD Google Cloud`
  
- `QuickBooks (Accounting)`, Name = `Journal Data`{{copy}}, Target Host = N/A
  
- `SalesForceCRM`, Name = `Customer Data`{{copy}}, Target Host = N/A

*These will be substituted into the various artifacts used by the system when deploying and operating this utility*

## Connect the components

Next we will connect our components:

- Scroll down the page to the `Service Chain` Canvas

- Drag the components into an arrangement as found in the use-case PDF (http://99.252.147.90:8078/UseCase.pdf) - notice, you are effectively recreating the diagram to describe the implemention of the use-case.  

- Connect the components by double-clicking on a node, then double-clicking on the node you want it to connect to (if you make a mistake, just right-click the connection line to remove it).

## Create the Service

We could continue to add additional polices and configure other elements of the service (please do explore), but for this scenario we have created and linked the components for our service.

We will now submit using the `Create Service` button at the bottom of the page.

The service will now appear in the catalog.

## Instantiating the Service

Find the service in the catalog and click on it to launch its management interface.

We want to place an order through the EnterpriseWeb API - we will use the console for this, return to your terminal window.

Copy the following REST command to the terminal, and substitute the Package URL found inside the EnterpriseWeb portal for the variable [[PACKAGE_URL]]

`curl -X POST -d '{test:"1"}' http://localhost"8088/api/ping`{{copy}}




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

