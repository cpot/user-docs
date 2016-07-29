��    >                    �  B   �  T   @  Z   �  �  �  S   �     �  �     �   �     _     w  G   �  e   �     :	     Q	  �   h	  &   a
     �
       s   !  X   �  �   �  \   �  �   �  �   i  e   �  t   U     �     �     �  h     �   z  a   <  l   �       �   +     �     �  �   �  a   �  P   �     O  �  `  �   Q  >   K  4   �  -   �  '   �       5   2  <   h  @   �  !   �  L     H   U  *   �  L   �  ,     :   C  E   ~  X   �       q  :  B   �  T   �  Z   D  �  �  S   R     �  �   �  �   V           &   G   ;   e   �      �       !  �   !  &   "     7"     �"  s   �"  X   D#  �   �#  \   /$  �   �$  �   %  e   �%  t   &     y&     �&     �&  h   �&  �   )'  a   �'  l   M(     �(  �   �(     )     �)  �   �)  a   K*  P   �*     �*  �  +  �    -  >   �-  4   9.  -   n.  '   �.     �.  5   �.  <   /  @   T/  !   �/  L   �/  H   0  *   M0  L   x0  ,   �0  :   �0  E   -1  X   s1     �1   A complete example our connector descriptor would look like this:: A complete example record provided by the connector in *JSON* would look like this:: A connector can provide data to :ref:`user-task` form fields. A connector reference field: A connector provides a web service that translates between the external system and Signavio Workflow. The connector implements a defined interface, which Signavio Workflow uses to access data in a format it can use. Signavio Workflow and the connector communicate over *HTTP* or *HTTPS*, with *JSON* as the data format. The open standards that define HTTP and JSON make it possible to implement connectors in any programming language. An example of a connector descriptor without any type descriptors would like this:: Authentication Before you can enable Salesforce triggers, you need to configure Outbound messages - a kind of Salesforce workflow action. Set this up in Salesforce as follows. Before you can set-up Salesforce integration, you need to create an endpoint in Signavio Workflow that Salesforce can send information to. Set this up in Signavio Workflow as follows. Configuring a connector Connector descriptor Copy the generated `Endpoint URL`, or leave this window open for later. Create or edit a new or existing workflow rule, and in the `Workflow Actions` section, select `Edit`. Custom data connectors Data types and formats Every connector provides a descriptor which defines the types of records that it provides. A connector can provide one or multiple types of records. Every record type again defines its structure, a list of fields with a key, a name and a data type. Finish Signavio Workflow configuration For the final configuration step, use the web service definition file to configure the Salesforce service in Signavio Workflow. Implementing a connector In the `Endpoint URL` field, paste the `Endpoint URL` from the Signavio Workflow configuration you created earlier. In the top-right user menu, select `My Organisation` and then select the `Services` tab. In the top-right user menu, select `My Organisation`, select the `Services` tab, and then select the Salesforce trigger type you created earlier. Now you can use the new :ref:`Salesforce trigger <trigger-salesforce>` in Signavio Workflow. On the `Configure Outbound Message` page, configure the new `Outbound Message`, to define which object fields to send to Signavio Workflow. On the `Outbound message` page, next to `Endpoint WSDL`, select the `Click for WSDL` link, which opens a web service definition file. On the `Specify Workflow Actions` page, select `Add Workflow Action` and then `New Outbound Message`. Our example connector will connect to a fictional customer database. Every customer record has the following fields: Record type descriptor Salesforce Integration Salesforce configuration Save the ``workflowOutboundMessage.wsdl`` file, which you will use to configure Signavio Workflow, next. Select `Save`. Do not forget to activate the workflow rule as soon as you have finished the configuration. To do this, click the `Activate` button at the top of the `Workflow Rule Detail` page. Select `Upload document`, and select the ``workflowOutboundMessage.wsdl`` file you saved earlier. Select the Setup menu item, and select `Build` → `Create` → `Workflow & Approvals` → `Workflow Rules`. Signavio Workflow configuration Signavio Workflow integrates with Salesforce workflows. You can configure this so that changes in Salesforce will automatically trigger Signavio Workflow processes. The The connector is available The connector provides a descriptor which gives some basic information like a name and a description and more detailed information about the structure of the provided data. The connector will provide its descriptor upon a *GET* request to its base URL. If your connector Under the Salesforce heading, enter a new trigger type name and select `Create`. Using connectors When you define a process in Signavio Workflow, you often include your own data in the process definition, such as the list of options for a form field. This works well for small lists that don’t change often or that belong to the process, such as a list of document statuses in a document approval process. However, fixed lists in the process definition become difficult to maintain when the data changes frequently or includes a large number of items, such as a list of products or customers. With Signavio Workflow, you can also integrate dynamic structured data from other IT systems into your workflows. The workflow system communicates with a third-party system using a *connector*, which a the customer or a partner implements and hosts. ``description`` - a more detailed description of the connector ``discount`` - the default discount for the customer ``email`` - the email address of the customer ``fullName`` - the name of the customer ``id`` - a unique identifier ``key`` - a unique key which identifies the connector ``name`` - a name for the connector which is shown in the UI ``protocolVersion`` - the version of the used connector protocol ``since`` - the registration date ``subscriptionType`` - the type of the subscription - bronze, silver or gold ``typeDescriptors`` - a list of one or more descriptors for record types ``version`` - the version of the connector a *key* should only consist of alphanumeric characters (a - z, A - Z, 0 - 9) can include structured data for each record. makes it possible to select from a dynamic list of records supports auto-complete so you can work with a large number of records the connector version should be increased with any change of the provided data structure the current version is ``1`` Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-29 12:38+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 1.3
 A complete example our connector descriptor would look like this:: A complete example record provided by the connector in *JSON* would look like this:: A connector can provide data to :ref:`user-task` form fields. A connector reference field: A connector provides a web service that translates between the external system and Signavio Workflow. The connector implements a defined interface, which Signavio Workflow uses to access data in a format it can use. Signavio Workflow and the connector communicate over *HTTP* or *HTTPS*, with *JSON* as the data format. The open standards that define HTTP and JSON make it possible to implement connectors in any programming language. An example of a connector descriptor without any type descriptors would like this:: Authentication Before you can enable Salesforce triggers, you need to configure Outbound messages - a kind of Salesforce workflow action. Set this up in Salesforce as follows. Before you can set-up Salesforce integration, you need to create an endpoint in Signavio Workflow that Salesforce can send information to. Set this up in Signavio Workflow as follows. Configuring a connector Connector descriptor Copy the generated `Endpoint URL`, or leave this window open for later. Create or edit a new or existing workflow rule, and in the `Workflow Actions` section, select `Edit`. Custom data connectors Data types and formats Every connector provides a descriptor which defines the types of records that it provides. A connector can provide one or multiple types of records. Every record type again defines its structure, a list of fields with a key, a name and a data type. Finish Signavio Workflow configuration For the final configuration step, use the web service definition file to configure the Salesforce service in Signavio Workflow. Implementing a connector In the `Endpoint URL` field, paste the `Endpoint URL` from the Signavio Workflow configuration you created earlier. In the top-right user menu, select `My Organisation` and then select the `Services` tab. In the top-right user menu, select `My Organisation`, select the `Services` tab, and then select the Salesforce trigger type you created earlier. Now you can use the new :ref:`Salesforce trigger <trigger-salesforce>` in Signavio Workflow. On the `Configure Outbound Message` page, configure the new `Outbound Message`, to define which object fields to send to Signavio Workflow. On the `Outbound message` page, next to `Endpoint WSDL`, select the `Click for WSDL` link, which opens a web service definition file. On the `Specify Workflow Actions` page, select `Add Workflow Action` and then `New Outbound Message`. Our example connector will connect to a fictional customer database. Every customer record has the following fields: Record type descriptor Salesforce Integration Salesforce configuration Save the ``workflowOutboundMessage.wsdl`` file, which you will use to configure Signavio Workflow, next. Select `Save`. Do not forget to activate the workflow rule as soon as you have finished the configuration. To do this, click the `Activate` button at the top of the `Workflow Rule Detail` page. Select `Upload document`, and select the ``workflowOutboundMessage.wsdl`` file you saved earlier. Select the Setup menu item, and select `Build` → `Create` → `Workflow & Approvals` → `Workflow Rules`. Signavio Workflow configuration Signavio Workflow integrates with Salesforce workflows. You can configure this so that changes in Salesforce will automatically trigger Signavio Workflow processes. The The connector is available The connector provides a descriptor which gives some basic information like a name and a description and more detailed information about the structure of the provided data. The connector will provide its descriptor upon a *GET* request to its base URL. If your connector Under the Salesforce heading, enter a new trigger type name and select `Create`. Using connectors When you define a process in Signavio Workflow, you often include your own data in the process definition, such as the list of options for a form field. This works well for small lists that don’t change often or that belong to the process, such as a list of document statuses in a document approval process. However, fixed lists in the process definition become difficult to maintain when the data changes frequently or includes a large number of items, such as a list of products or customers. With Signavio Workflow, you can also integrate dynamic structured data from other IT systems into your workflows. The workflow system communicates with a third-party system using a *connector*, which a the customer or a partner implements and hosts. ``description`` - a more detailed description of the connector ``discount`` - the default discount for the customer ``email`` - the email address of the customer ``fullName`` - the name of the customer ``id`` - a unique identifier ``key`` - a unique key which identifies the connector ``name`` - a name for the connector which is shown in the UI ``protocolVersion`` - the version of the used connector protocol ``since`` - the registration date ``subscriptionType`` - the type of the subscription - bronze, silver or gold ``typeDescriptors`` - a list of one or more descriptors for record types ``version`` - the version of the connector a *key* should only consist of alphanumeric characters (a - z, A - Z, 0 - 9) can include structured data for each record. makes it possible to select from a dynamic list of records supports auto-complete so you can work with a large number of records the connector version should be increased with any change of the provided data structure the current version is ``1`` 