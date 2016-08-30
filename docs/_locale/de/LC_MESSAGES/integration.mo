��          �       �      �  �   �  �   .  G   �  e   .  &   �     �  s   ;  X   �  �     \   �  �   �  �   �  e   	     o     �  h   �  �     a   �  l   ,	     �	  �   �	  P   ^
  L  �
  �   �  �   �  �   �  K   `  ,   �  z   �  i   T  b   �  �   !  e   �  �   >  �   2  �   �     [     r  {   �  p     ]   x  �   �     _  �     �   C   Before you can enable Salesforce triggers, you need to configure Outbound messages - a kind of Salesforce workflow action. Set this up in Salesforce as follows. Before you can set-up Salesforce integration, you need to create an endpoint in Signavio Workflow that Salesforce can send information to. Set this up in Signavio Workflow as follows. Copy the generated `Endpoint URL`, or leave this window open for later. Create or edit a new or existing workflow rule, and in the `Workflow Actions` section, select `Edit`. Finish Signavio Workflow configuration For the final configuration step, use the web service definition file to configure the Salesforce service in Signavio Workflow. In the `Endpoint URL` field, paste the `Endpoint URL` from the Signavio Workflow configuration you created earlier. In the top-right user menu, select `My Organisation` and then select the `Services` tab. In the top-right user menu, select `My Organisation`, select the `Services` tab, and then select the Salesforce trigger type you created earlier. Now you can use the new :ref:`Salesforce trigger <trigger-salesforce>` in Signavio Workflow. On the `Configure Outbound Message` page, configure the new `Outbound Message`, to define which object fields to send to Signavio Workflow. On the `Outbound message` page, next to `Endpoint WSDL`, select the `Click for WSDL` link, which opens a web service definition file. On the `Specify Workflow Actions` page, select `Add Workflow Action` and then `New Outbound Message`. Salesforce Integration Salesforce configuration Save the ``workflowOutboundMessage.wsdl`` file, which you will use to configure Signavio Workflow, next. Select `Save`. Do not forget to activate the workflow rule as soon as you have finished the configuration. To do this, click the `Activate` button at the top of the `Workflow Rule Detail` page. Select `Upload document`, and select the ``workflowOutboundMessage.wsdl`` file you saved earlier. Select the Setup menu item, and select `Build` → `Create` → `Workflow & Approvals` → `Workflow Rules`. Signavio Workflow configuration Signavio Workflow integrates with Salesforce workflows. You can configure this so that changes in Salesforce will automatically trigger Signavio Workflow processes. Under the Salesforce heading, enter a new trigger type name and select `Create`. Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-08-11 13:23+0200
PO-Revision-Date: 2016-04-29 11:40+0200
Last-Translator: Philipp Giese <philipp.giese@effektif.com>
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 Bevor Sie Salesforce Trigger benutzen können, müssen Sie `ausgehende Nachrichten` in Salesforce konfigurieren. Solche Nachrichten sind ein Typ von Workflow Aktionen innerhalb von Salesforce. Gehen Sie hierzu wie folgt vor: Bevor Sie anfangen können, müssen Sie zunächst einen Endpunkt für Salesforce in Signavio Workflow einrichten. Hierdurch wird es Salesforce ermöglicht Daten an Signavio Workflow zu übermitteln. Gehen Sie wie folgt vor: Kopieren Sie den Wert `Endpunkt-URL` oder lassen Sie diese Seite für später offen. Wir werden diesen Wert im weiteren Verlauf der Konfiguration noch benötigen. Legen Sie eine neue Workflow-Regel and oder bearbeiten Sie eine Bestehende. Signavio Workflow Konfiguration abschließen Im letzten Schritt müssen Sie nun die WSDL-Datei, die Sie von Salesforce bekommen haben, in Signavio Workflow hochladen.  Hier müssen Sie nun auch die Endpunkt-URL, die Sie vorher in Signavio Workflow erzeugt haben eintragen.  Im Nutzermenü oben rechts wählen Sie zunächst `Organisationseinstellungen` und dann `Services`. Navigieren Sie wieder in ihrem Nutzermenü oben rechts zu `Organisationseinstellungen` und dann zu `Services`. Wählen Sie nun den Salesforce-Auslöser, den Sie zuvor erstellt haben. Der :ref:`Salesforce-Auslöser <trigger-salesforce>` steht nun in all Ihren Prozessen zur Verfügung. Im folgenden Konfigurationsdialog spezifizieren Sie nun die Daten, die an Signavio Workflow übermittelt werden sollen. Alle Daten, die Sie hier auswählen sind später als Prozessvariablen in Workflows, die diesen Auslöser nutzen verfügbar. Lassen Sie sich nun noch die Details zu Ihrer `ausgehenden Nachricht` anzeigen. Neben dem Punkt `Endpunkt WSDL` klicken Sie auf `Zur WSDL-Anzeige hier klicken`. Im dritten Schritt `Workflow-Aktionen angeben` wählen Sie unter `Workflow-Aktion hinzufügen` den Eintrag `Neue ausgehende Nachricht`. Salesforce Integration Salesforce Konfiguration Diese Datei benötigt Signavio Workflow zur Kommunikation mit Salesforce. Speichern Sie diese bitte zunächst auf Ihrem PC. Vergessen Sie nicht die Regel zu speichern und zu aktivieren, nachdem Sie die Konfiguration abgeschlossen haben. Klicken Sie auf `Datei hochladen` und wählen Sie die Datei, die Sie zuvor gespeichert haben. In Ihrem Salesforce-Account unter `Setup` wählen Sie `Einrichten` → `Erstellen` → `Workflow & Genehmigungen` → `Workflow-Regeln`. Signavio Workflow Konfiguration Signavio Workflow ist mit Salesforce Workflows integriert. Sie können diese Workflows so konfigurieren, dass Änderungen in Ihrem Salesforce automatisch Workflows in Signavio Workflow auslösen. Um einen neuen Auslöser zu anzulegen, tragen Sie einen Namen für die Aktion (z.B. Neuer Lead wurde erzeugt) ein und wählen dann `Erstellen`. 