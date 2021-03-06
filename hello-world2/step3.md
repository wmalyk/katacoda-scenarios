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

- Drag the components into an arrangement as found in the use-case PDF (http://99.234.141.68:8048/UseCase.pdf - slide 3) - notice, you are effectively recreating the diagram to describe the implemention of the use-case.  

- Connect the components by double-clicking on a node, then double-clicking on the node you want it to connect to (if you make a mistake, just right-click the connection line to remove it).

## Explore the Service

In the created service you can now be able to do things like double click the connections in the service graph to drill into the various interfaces which are available, or expand the entries in the Components list to see configurable properties. These are controls exposed by the authors of the packages being composed, allowing higher-level programability during service composition. A next level of control would be to compose over-the-top policies and processes using the Task Manager module.

## Create the Service

We could continue to add additional polices and configure other elements of the service (please do explore), but for this scenario we have created and linked the components for our service.

We will now submit using the `Create Service` button at the bottom of the page.

The service will now appear in the catalog.

## Instantiating the Service

Find the service ("Secure Accounting Portal") in the catalog and click on it to launch a management interface.

We want to place an order through the EnterpriseWeb API - we will use a REST client such as Postman (Chrome/Desktop) or RESTED (FireFox), or we could use CURL on the command line:

 - Place a POST to: `http://99.234.141.68:8048/api/provisioning`{{copy}}

 - No additional Headers or Authorization is required (disabled to keep the scenario simple)
 
 - POST a raw JSON body

 - Make the body: `{ns: {name: "Katacoda Portal",ref: "[[PACKAGE_URL]]",params: [{id: "host_name", value: "malyk.net"}]}}`{{copy}}
 
 - and substitute the Package URL found inside the EnterpriseWeb portal for the variable [[PACKAGE_URL]] (this will be displayed on the "Profile Tab", and look like: http://localhost:8045/fil/system/platform/ents/Package/objects/ad3244cb-04f0-4c70-bc28-41cdba328c7a, be sure to use the one for the new service you just created).

 - submit

## Viewing the Instance

Back inside the EnterpriseWeb portal, click on the `Instances` tab, then click the `Go` button on the search. It will refresh the display including a reference to the instance that was created.

If you click the link  http://malyk.net  you'll see the service in action.

If you expand the row (use the small arrow on the left) you'll see the full details of the service which was deployed.
