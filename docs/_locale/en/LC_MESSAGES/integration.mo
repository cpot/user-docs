��    �      \              �
  g   �
  `     ]   f  �   �  �   �  R   �  I   �  T   %  E   z  Z   �      l  9  �   �  H   g  C   �  /   �  �   $  H   �  N        R  �   a  �     c   �  �        �     �  	   �     �     �  G     e   b     �     �  �   �  	   �     �     �     �     �     �  �   �  �   �  y   �      �  &     �   B  x   �  �   @  n     r   �     �  	   y  )   �  &   �  -   �               6  s   �  X   *   �   �   	   !  0   !  
   P!  \   [!     �!  �   �!  �   P"  e   �"     <#     E#     ]#  "   l#  !   �#     �#  %   �#     �#     �#     $     #$     :$  h   S$  �   �$  a   ~%  l   �%  �   M&     '  �   :'  �   �'  	   �(  .   �(  =   �(  S   4)  S   �)  *   �)  �   *  I   �*  G   @+  (   �+  B   �+  �   �+  r   �,  6   �,  �   --  ^   �-  O   ,.  H   |.  �   �.  �   �/  -   q0     �0  "   �0  P   �0  P   1  h   h1  �   �1     �2     �2     �2  �  �2  �   �4  >  �5  �   �6     �7  ^   �7  F   ^8  (   �8     �8     �8  �   �8     �9     �9     �9  	   �9     �9  
   :  d   :     w:     �:     �:  P   �:  _   �:     D;     M;     d;     z;     �;     �;     �;     �;     �;     �;  (   <     ;<  	   O<     Y<     n<     w<     �<     �<  ,   �<  :   �<     =     =  ,   ==  E   j=     �=  q  �=  g   6?  `   �?  ]   �?  �   ]@  �   8A  R   !B  I   tB  T   �B  E   C  Z   YC    �C  l  �D  �   ?F  H    G  C   IG  /   �G  �   �G  H   SH  N   �H     �H  �   �H  �   �I  c   SJ  �   �J     PK     \K  	   tK     ~K     �K  G   �K  e   �K     aL     xL  �   �L  	   #M     -M     GM     SM     rM     �M  �   �M  �   JN  y   O      �O  &   �O  �   �O  x   `P  �   �P  n   �Q  r   R     �R  	   S  )   S  &   FS  -   mS     �S     �S     �S  s   OT  X   �T  �   U  	   �U  0   �U  
   �U  \   �U     QV  �   ]V  �   �V  e   oW     �W     �W     �W  "   X  !   (X     JX  %   ^X     �X     �X     �X     �X     �X  h   �X  �   UY  a   Z  l   yZ  �   �Z     �[  �   �[  �   x\  	   V]  .   `]  =   �]  S   �]  S   !^  *   u^  �   �^  I   �_  G   �_  (   !`  B   J`  �   �`  r   a  6   �a  �   �a  ^   fb  O   �b  H   c  �   ^c  �   7d  -   
e     8e  "   <e  P   _e  P   �e  h   f  �   jf     -g     ?g     Wg  �  ig  �   Zi  >  Nj  �   �k     �l  ^   �l  F   �l  (   >m     gm     |m  �   �m     Vn     cn     sn  	   �n     �n  
   �n  d   �n     o     o     $o  P   ,o  _   }o     �o     �o     �o     p     'p     Cp     Wp     lp     �p     �p  (   �p     �p  	   �p     �p     q     q     $q     -q  ,   9q  :   fq     �q     �q  ,   �q  E   r     Ir   :ref:`connector-descriptor` - defines one or more record types, each of which defines a list of fields. :ref:`connector-record-details` (optional) - all fields for one record from the list of records. :ref:`connector-type-options` - a list of records for each record type the connector defines. A **record field descriptor** specifies one field of a record type. A record type is a complex structure that includes one or more fields, such as a customer’s full name. Each field has a key, a name and a data type. A **record type descriptor** describes the format of the data the connector provides, such as the format of a customer record. The ``typeDescriptors`` property in the JSON response is an array of record type descriptor JSON objects. A JSON object that describes field’s data type - see :ref:`connector-data-types` A choice type represents a value from a fixed list of configured options. A complete example customer record, formatted as *JSON*, would then look like this:: A complete example of our connector descriptor would look like this:: A connector can provide data to :ref:`user-task` form fields. A connector reference field: A connector needs a descriptor to provide basic information, such as its name and description, as well as detailed information about the structure of the data the connector provides. When you implement a connector, you must make the descriptor available as the following HTTP resource. A connector provides a web service that translates between the external system and Signavio Workflow. The connector implements a defined interface, which Signavio Workflow uses to access data in a format it can use. Signavio Workflow and the connector communicate over *HTTP* or *HTTPS*, which makes it possible to implement connectors in any programming language. A data type defines which kind of value and format a field in a record can have. A type descriptor represents a data type as a JSON object, whose ``name`` property contains the data type name. A link represents an Internet address (URL), such as a web site address. A money value is a combination of an ``amount`` and a ``currency``. A number can be either an integer or a decimal. A text can contain any string. Optionally, a single line text can be turned into a multi line text by adding the flag ``multiLine`` to the data type. An array of :ref:`record field descriptors <connector-field-descriptor>` An example for the ``fullName`` of our customer record type looks like this :: Authentication Before you can enable Salesforce triggers, you need to configure Outbound messages - a kind of Salesforce workflow action. Set this up in Salesforce as follows. Before you can set-up Salesforce integration, you need to create an endpoint in Signavio Workflow that Salesforce can send information to. Set this up in Signavio Workflow as follows. Boolean value - ``true`` indicates that single records can be fetched by the ID in the options list Boolean value - ``true`` indicates that the connector provides a list of record options, used to provide a list in the user interface for user selection Choice type Configuring a connector Connector Connector descriptor Connector descriptor properties Copy the generated `Endpoint URL`, or leave this window open for later. Create or edit a new or existing workflow rule, and in the `Workflow Actions` section, select `Edit`. Custom data connectors Data types and formats Data types may use additional properties for type-specific configuration. Furthermore, the expected format a record value depends on the data type. Date type Default customer discount Description Detailed connector description Email address Email address type Every choice option consists of an ``id`` and a ``name``. The ``id`` of a choice option will be used as the field value in a record. The ``name`` will be shown to the user in the UI. Every date type value in a record must be formatted as a [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) string in UTC. The used format is ``YYYY-MM-DDThh:mm:ss.SSSZ``, an example value looks like this:: Every record type automatically includes an ``id`` field with type ``text``, so you don’t have to define it explicitly. Example - customer record fields Finish Signavio Workflow configuration For example, a list of customer options, fetched from URL ``https://example.org/connector/customer/options``, would look like this:: For example, a single customer record, with URL ``https://example.org/connector/customer/7g8h9i`` would look like this:: For example, consider a connector that accesses a fictional customer database, that you publish at the endpoint URL ``https://example.org/connector``. In this example, each customer record has the following fields. For example, the JSON object for a customer record type descriptor, without any fields, would look like this:: For example, the JSON response body for a connector descriptor without any type descriptors would look like this:: For the final configuration step, use the web service definition file to configure the Salesforce service in Signavio Workflow. Full name GET - fetches details for a single record GET - fetches the connector descriptor GET - fetches the list of record type options HTTP basic authentication, Implementing a connector In our example, you would retrieve the connector descriptor by sending the HTTP request ``GET https://example.org/connector/``. In the `Endpoint URL` field, paste the `Endpoint URL` from the Signavio Workflow configuration you created earlier. In the top-right user menu, select `My Organisation` and then select the `Services` tab. In the top-right user menu, select `My Organisation`, select the `Services` tab, and then select the Salesforce trigger type you created earlier. Link type List of one or more descriptors for record types Money type Now you can use the new :ref:`Salesforce trigger <trigger-salesforce>` in Signavio Workflow. Number type On the `Configure Outbound Message` page, configure the new `Outbound Message`, to define which object fields to send to Signavio Workflow. On the `Outbound message` page, next to `Endpoint WSDL`, select the `Click for WSDL` link, which opens a web service definition file. On the `Specify Workflow Actions` page, select `Add Workflow Action` and then `New Outbound Message`. Property Query string (optional) Record details Record field descriptor properties Record type descriptor properties Record type options Record type options object properties Registration date Request methods Response content type Salesforce Integration Salesforce configuration Save the ``workflowOutboundMessage.wsdl`` file, which you will use to configure Signavio Workflow, next. Select `Save`. Do not forget to activate the workflow rule as soon as you have finished the configuration. To do this, click the `Activate` button at the top of the `Workflow Rule Detail` page. Select `Upload document`, and select the ``workflowOutboundMessage.wsdl`` file you saved earlier. Select the Setup menu item, and select `Build` → `Create` → `Workflow & Approvals` → `Workflow Rules`. Signavio Workflow accesses the connector on the web, via the public Internet, or via a private intranet for an on-premise installation. The URL where the connector is located is called the *endpoint URL*. Signavio Workflow configuration Signavio Workflow integrates with Salesforce workflows. You can configure this so that changes in Salesforce will automatically trigger Signavio Workflow processes. Signavio Workflow supports three different kinds of date types: ``date``, ``time``, ``datetime``. For ``date`` and ``time`` only the respective parts of a timestamp are considered when evaluating conditions in a workflow. Text type The connector name shown in the user interface The connector protocol version. The current version is ``1``. The connector version, which should increase if the provided data structure changes The email address type represents, as the name already indicates, an email address. The field name shown in the user interface The record value is a JSON object with the two fields ``amount`` and ``currency``. The ``amount`` can be any number. The ``currency`` is a [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) string which represents the respective currency. The record value is the plain number. The decimal mark is a single ``.``. The record value must be a boolean value, either ``true`` or ``false``. The record value must be a plain string. The response body must be a JSON object with the following fields. The response body must be an array of JSON objects, which should have a limited size. Each object in the array must have the following fields. The text label shown in the user interface, which could aggregate multiple record fields like ``fullName (email)`` The type name shown in the form builder user interface The value of the ``id`` should be a string consisting of alphanumeric characters (a-z, A-Z, 0-9). A choice type must not have two options with the same ``id``. The yes/no checkbox type represents a single boolean value which can be ``true`` or ``false``. This example now includes enough information to implement a complete connector. To implement a connector, you publish three different kinds of resource. To make a list of options available to forms, in the :ref:`connector-type-descriptor`, set the ``optionsAvailable`` flag to ``true``. The connector must also make the options available as the following HTTP resource. To make a record’s fields available, in the :ref:`connector-type-descriptor`, set the ``fetchOneAvailable`` flag to ``true``. The connector must also make the records available as the following HTTP resource. Type of subscription - bronze, silver or gold URL URL (relative to the endpoint URL) Under the Salesforce heading, enter a new trigger type name and select `Create`. Unique alphanumeric key (characters a-z, A-Z, 0-9) that identifies the connector Unique alphanumeric key (characters a-z, A-Z, 0-9) that identifies the field type within the record type Unique alphanumeric key (characters a-z, A-Z, 0-9) that identifies the record type within the connector descriptor, used in :ref:`connector-type-options` and :ref:`connector-record-details` URLs Unique identifier Unique string record ID Using a connector When you define a process in Signavio Workflow, you often include your own data in the process definition, such as the list of options for a form field. This works well for small lists that don’t change often or that belong to the process, such as a list of document statuses in a document approval process. However, fixed lists in the process definition become difficult to maintain when the data changes frequently or includes a large number of items, such as a list of products or customers. When you use a connector form field to select a record, you can use the record’s data in the workflow. Signavio Workflow only stores the record’s ID as a reference, and fetches the entire record when needed, when accessing the nested data. When you use a record type on a form, you will see a form field where you can enter a search query and select one of the options shown. Each result represents a record provided by the connector. In order to show a selection of different records to the user, a connector can provide a list of options for a record type. With Signavio Workflow, you can also integrate dynamic structured data from other IT systems into your workflows. The workflow system fetches data from a third-party system using a *connector*, which a customer or a partner implements and hosts. Yes/No Checkbox type ``/:type/:id`` - with path parameters ``:type`` - a record type key, and ``:id`` - a record ID ``/:type/options`` - with path parameter ``:type`` - a record type key ``/`` - the connector’s *endpoint URL* ``application/json`` ``date`` ``date`` and ``time`` strings need to be transmitted in that format as well. As mentioned before, for those types only the first respectively the last part of the timestamp is considered during the execution. ``datetime`` ``description`` ``discount`` ``email`` ``fetchOneAvailable`` ``fields`` ``filter=:query`` - added in case the user enters a search, where `:query` encodes the search string ``fullName`` ``id`` ``key`` ``kind`` - (required) defines whether the value is a simple date, a time or both ``multiLine`` - (optional) if set to ``true`` the text field will allow multiple lines of input ``name`` ``name`` - ``boolean`` ``name`` - ``choice`` ``name`` - ``date`` ``name`` - ``emailAddress`` ``name`` - ``link`` ``name`` - ``money`` ``name`` - ``number`` ``name`` - ``text`` ``optionsAvailable`` ``options`` - an array of choice options ``protocolVersion`` ``since`` ``subscriptionType`` ``time`` ``typeDescriptors`` ``type`` ``version`` can include structured data for each record. makes it possible to select from a dynamic list of records provide name and token provide username and password specify location (header or query parameter) supports auto-complete so you can work with a large number of records token authorization Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-08-01 18:59+0200
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 1.3
 :ref:`connector-descriptor` - defines one or more record types, each of which defines a list of fields. :ref:`connector-record-details` (optional) - all fields for one record from the list of records. :ref:`connector-type-options` - a list of records for each record type the connector defines. A **record field descriptor** specifies one field of a record type. A record type is a complex structure that includes one or more fields, such as a customer’s full name. Each field has a key, a name and a data type. A **record type descriptor** describes the format of the data the connector provides, such as the format of a customer record. The ``typeDescriptors`` property in the JSON response is an array of record type descriptor JSON objects. A JSON object that describes field’s data type - see :ref:`connector-data-types` A choice type represents a value from a fixed list of configured options. A complete example customer record, formatted as *JSON*, would then look like this:: A complete example of our connector descriptor would look like this:: A connector can provide data to :ref:`user-task` form fields. A connector reference field: A connector needs a descriptor to provide basic information, such as its name and description, as well as detailed information about the structure of the data the connector provides. When you implement a connector, you must make the descriptor available as the following HTTP resource. A connector provides a web service that translates between the external system and Signavio Workflow. The connector implements a defined interface, which Signavio Workflow uses to access data in a format it can use. Signavio Workflow and the connector communicate over *HTTP* or *HTTPS*, which makes it possible to implement connectors in any programming language. A data type defines which kind of value and format a field in a record can have. A type descriptor represents a data type as a JSON object, whose ``name`` property contains the data type name. A link represents an Internet address (URL), such as a web site address. A money value is a combination of an ``amount`` and a ``currency``. A number can be either an integer or a decimal. A text can contain any string. Optionally, a single line text can be turned into a multi line text by adding the flag ``multiLine`` to the data type. An array of :ref:`record field descriptors <connector-field-descriptor>` An example for the ``fullName`` of our customer record type looks like this :: Authentication Before you can enable Salesforce triggers, you need to configure Outbound messages - a kind of Salesforce workflow action. Set this up in Salesforce as follows. Before you can set-up Salesforce integration, you need to create an endpoint in Signavio Workflow that Salesforce can send information to. Set this up in Signavio Workflow as follows. Boolean value - ``true`` indicates that single records can be fetched by the ID in the options list Boolean value - ``true`` indicates that the connector provides a list of record options, used to provide a list in the user interface for user selection Choice type Configuring a connector Connector Connector descriptor Connector descriptor properties Copy the generated `Endpoint URL`, or leave this window open for later. Create or edit a new or existing workflow rule, and in the `Workflow Actions` section, select `Edit`. Custom data connectors Data types and formats Data types may use additional properties for type-specific configuration. Furthermore, the expected format a record value depends on the data type. Date type Default customer discount Description Detailed connector description Email address Email address type Every choice option consists of an ``id`` and a ``name``. The ``id`` of a choice option will be used as the field value in a record. The ``name`` will be shown to the user in the UI. Every date type value in a record must be formatted as a [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) string in UTC. The used format is ``YYYY-MM-DDThh:mm:ss.SSSZ``, an example value looks like this:: Every record type automatically includes an ``id`` field with type ``text``, so you don’t have to define it explicitly. Example - customer record fields Finish Signavio Workflow configuration For example, a list of customer options, fetched from URL ``https://example.org/connector/customer/options``, would look like this:: For example, a single customer record, with URL ``https://example.org/connector/customer/7g8h9i`` would look like this:: For example, consider a connector that accesses a fictional customer database, that you publish at the endpoint URL ``https://example.org/connector``. In this example, each customer record has the following fields. For example, the JSON object for a customer record type descriptor, without any fields, would look like this:: For example, the JSON response body for a connector descriptor without any type descriptors would look like this:: For the final configuration step, use the web service definition file to configure the Salesforce service in Signavio Workflow. Full name GET - fetches details for a single record GET - fetches the connector descriptor GET - fetches the list of record type options HTTP basic authentication, Implementing a connector In our example, you would retrieve the connector descriptor by sending the HTTP request ``GET https://example.org/connector/``. In the `Endpoint URL` field, paste the `Endpoint URL` from the Signavio Workflow configuration you created earlier. In the top-right user menu, select `My Organisation` and then select the `Services` tab. In the top-right user menu, select `My Organisation`, select the `Services` tab, and then select the Salesforce trigger type you created earlier. Link type List of one or more descriptors for record types Money type Now you can use the new :ref:`Salesforce trigger <trigger-salesforce>` in Signavio Workflow. Number type On the `Configure Outbound Message` page, configure the new `Outbound Message`, to define which object fields to send to Signavio Workflow. On the `Outbound message` page, next to `Endpoint WSDL`, select the `Click for WSDL` link, which opens a web service definition file. On the `Specify Workflow Actions` page, select `Add Workflow Action` and then `New Outbound Message`. Property Query string (optional) Record details Record field descriptor properties Record type descriptor properties Record type options Record type options object properties Registration date Request methods Response content type Salesforce Integration Salesforce configuration Save the ``workflowOutboundMessage.wsdl`` file, which you will use to configure Signavio Workflow, next. Select `Save`. Do not forget to activate the workflow rule as soon as you have finished the configuration. To do this, click the `Activate` button at the top of the `Workflow Rule Detail` page. Select `Upload document`, and select the ``workflowOutboundMessage.wsdl`` file you saved earlier. Select the Setup menu item, and select `Build` → `Create` → `Workflow & Approvals` → `Workflow Rules`. Signavio Workflow accesses the connector on the web, via the public Internet, or via a private intranet for an on-premise installation. The URL where the connector is located is called the *endpoint URL*. Signavio Workflow configuration Signavio Workflow integrates with Salesforce workflows. You can configure this so that changes in Salesforce will automatically trigger Signavio Workflow processes. Signavio Workflow supports three different kinds of date types: ``date``, ``time``, ``datetime``. For ``date`` and ``time`` only the respective parts of a timestamp are considered when evaluating conditions in a workflow. Text type The connector name shown in the user interface The connector protocol version. The current version is ``1``. The connector version, which should increase if the provided data structure changes The email address type represents, as the name already indicates, an email address. The field name shown in the user interface The record value is a JSON object with the two fields ``amount`` and ``currency``. The ``amount`` can be any number. The ``currency`` is a [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) string which represents the respective currency. The record value is the plain number. The decimal mark is a single ``.``. The record value must be a boolean value, either ``true`` or ``false``. The record value must be a plain string. The response body must be a JSON object with the following fields. The response body must be an array of JSON objects, which should have a limited size. Each object in the array must have the following fields. The text label shown in the user interface, which could aggregate multiple record fields like ``fullName (email)`` The type name shown in the form builder user interface The value of the ``id`` should be a string consisting of alphanumeric characters (a-z, A-Z, 0-9). A choice type must not have two options with the same ``id``. The yes/no checkbox type represents a single boolean value which can be ``true`` or ``false``. This example now includes enough information to implement a complete connector. To implement a connector, you publish three different kinds of resource. To make a list of options available to forms, in the :ref:`connector-type-descriptor`, set the ``optionsAvailable`` flag to ``true``. The connector must also make the options available as the following HTTP resource. To make a record’s fields available, in the :ref:`connector-type-descriptor`, set the ``fetchOneAvailable`` flag to ``true``. The connector must also make the records available as the following HTTP resource. Type of subscription - bronze, silver or gold URL URL (relative to the endpoint URL) Under the Salesforce heading, enter a new trigger type name and select `Create`. Unique alphanumeric key (characters a-z, A-Z, 0-9) that identifies the connector Unique alphanumeric key (characters a-z, A-Z, 0-9) that identifies the field type within the record type Unique alphanumeric key (characters a-z, A-Z, 0-9) that identifies the record type within the connector descriptor, used in :ref:`connector-type-options` and :ref:`connector-record-details` URLs Unique identifier Unique string record ID Using a connector When you define a process in Signavio Workflow, you often include your own data in the process definition, such as the list of options for a form field. This works well for small lists that don’t change often or that belong to the process, such as a list of document statuses in a document approval process. However, fixed lists in the process definition become difficult to maintain when the data changes frequently or includes a large number of items, such as a list of products or customers. When you use a connector form field to select a record, you can use the record’s data in the workflow. Signavio Workflow only stores the record’s ID as a reference, and fetches the entire record when needed, when accessing the nested data. When you use a record type on a form, you will see a form field where you can enter a search query and select one of the options shown. Each result represents a record provided by the connector. In order to show a selection of different records to the user, a connector can provide a list of options for a record type. With Signavio Workflow, you can also integrate dynamic structured data from other IT systems into your workflows. The workflow system fetches data from a third-party system using a *connector*, which a customer or a partner implements and hosts. Yes/No Checkbox type ``/:type/:id`` - with path parameters ``:type`` - a record type key, and ``:id`` - a record ID ``/:type/options`` - with path parameter ``:type`` - a record type key ``/`` - the connector’s *endpoint URL* ``application/json`` ``date`` ``date`` and ``time`` strings need to be transmitted in that format as well. As mentioned before, for those types only the first respectively the last part of the timestamp is considered during the execution. ``datetime`` ``description`` ``discount`` ``email`` ``fetchOneAvailable`` ``fields`` ``filter=:query`` - added in case the user enters a search, where `:query` encodes the search string ``fullName`` ``id`` ``key`` ``kind`` - (required) defines whether the value is a simple date, a time or both ``multiLine`` - (optional) if set to ``true`` the text field will allow multiple lines of input ``name`` ``name`` - ``boolean`` ``name`` - ``choice`` ``name`` - ``date`` ``name`` - ``emailAddress`` ``name`` - ``link`` ``name`` - ``money`` ``name`` - ``number`` ``name`` - ``text`` ``optionsAvailable`` ``options`` - an array of choice options ``protocolVersion`` ``since`` ``subscriptionType`` ``time`` ``typeDescriptors`` ``type`` ``version`` can include structured data for each record. makes it possible to select from a dynamic list of records provide name and token provide username and password specify location (header or query parameter) supports auto-complete so you can work with a large number of records token authorization 