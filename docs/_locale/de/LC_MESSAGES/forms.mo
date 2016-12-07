��    -      �              �  �   �  .   �     �  F     ?   \     �     �  ~   �     L  1   b      �     �     �  �   �  �   ]  '     �   /  ~   �  8   [  r   �  8   	  �   @	  �   �	  �   m
  b   &  {   �           b   1     �     �  .   �     �  �   �  L   �  0   �  O   (  �   x  q   	  v   {  T   �  M   G  ~   �  f     R  {  �   �  *   �  !   �  l   �  3   e     �     �  �   �     �  *   �     �     �  	   �  �     �   �  +   l  j   �  �     ^   �  �     ,   �  �     �   �  �   g  �   %  �   �  �  x        �   (      �      �   (   �      !  �   !  z   "  <   �"     �"  �   Q#  �   �#  �   �$  Y   %  R   l%  [   �%  V   &   Adding an existing field to a form makes it possible to view or update existing information, such as a user task form that you use to complete information the person who started the case did not enter on the trigger form. Adding an existing workflow variable to a form Choice field configuration Choice fields have a `Options` - the list of values to choose between: Configuring a form field in the process editor’s form builder Configuring form fields Date field configuration Date fields have a `Date/time` option for choosing between a date and time, just a date without a time of day, or just a time: Deleting a form field Entering multiple field values in two text fields Form data in a case event stream Form triggers Forms In Signavio Workflow, you can use forms to enter information when you run a process. You can use forms in two places: form triggers and user tasks. Select a field in the `Fields` section to open its configuration panel. The top row of the field configuration panel shows the field type label, the editable field name. Starting a new case with a form trigger Text fields also have an additional `Multi-line` option that configures Signavio Workflow to display the form field as a multi-line text input area, for longer text values. The `Add a field` second contains a field types palette. Click one of the field types to add a field of that type to the form. The `Fields` section shows the fields you add to a form: The `Reuse a field` section lists variables that have already been defined on other forms, such as a trigger form: The process editor’s form builder for a new empty form This form has a description (`Enter personal details`) and two fields. The icon next to the `Name` field label indicates that the field has an additional description. To add a form trigger to a process, use the process builder’s :ref:`Triggers <triggers>` page to select `When a form is submitted`. To add a user task form to a process, use the process builder’s :ref:`Actions <actions>` page to add a user task, and on the user task’s configuration panel, select the `Form` tab. To create a form in the process editor, for a form trigger or user task, you use the form builder. To delete a field, click the delete button in the top-right corner, and click the confirmation tick mark button to confirm: Use the `Description` text area to provide initial instructions to people who complete the form. You can use `Markdown <http://daringfireball.net/projects/markdown/basics>`_ to format the description, which makes it convenient to link to additional information, for example. User field configuration User fields also have a `Candidates` option that you can use to choose which users you can assign: User task forms Using the form builder Viewing and editing values on a user task form Viewing form data When you enable the `Allow entering multiple values` option, the field appears differently on forms. Entering a value adds it to the list. Use the × icon to remove a value. When you enter data in a form, it appears on the case view’s event stream: You can also configure the following properties. You can use the `forms` link at the top of event stream to only show form data. You use a :ref:`form trigger <form-trigger>` to set the values of :ref:`workflow variables <variables>` when you start a new case for a process. You use a :ref:`user task <user-task>` form to view and edit the values of :ref:`workflow variables <variables>`. `Allow entering multiple values` - specifies that the field has a list of values that you add and remove independently `Description` - an optional field description, shown via context-sensitive help icon `Initial value` - an optional default value that pre-populates the form field `Mandatory` - specifies that you must enter a field value, so that you cannot complete the form without a value for this field `Read-only` - specifies that you cannot edit the value, used to display previously-entered information Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-04-29 10:45+0200
PO-Revision-Date: 2016-09-23 13:36+0200
Last-Translator: Timotheus Kampik <timotheus.kampik@signavio.com>
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Indem Sie ein bereits vorhandenes Feld wiederverwenden, können Sie eingegebene Daten einsehen und bearbeiten. So können Sie zum Beispiel Informationen nachtragen, die im ursprüngliche Formular nicht hinterlegt wurden. Ein bereits vorhanden Feld wiederverwenden Konfiguration eines Auswahlfelds. In Auswahlfeldern können die verschiedenen Möglichkeiten der Auswahl unter `Optionen` konfiguriert werden. Konfiguration eines Formularfelds im Formulareditor Formularfelder konfigurieren Konfiguration eines Datumsfelds In Datumsfeldern können Sie sich unter der Option `Datum / Uhrzeit` entscheiden, ob Sie nur ein Datum, eine Datum und eine Uhrzeit oder nur eine Uhrzeit auswählen möchten. Ein Formularfeld löschen Eingabe mehrerer Werte in zwei Text-Felder Daten im Aktivitäts-Stream Formulare als Auslöser Formulare Sie können Formulare in Signavio Workflow benutzen um Daten einzugeben, während Sie einen Prozess ausführen. Formulare können sowohl in Aufgaben und als auch als Auslöser verwendet werden.  Klicken Sie auf ein Feld im Bereich `Formularfelder`, um dessen Konfiguration zu öffnen. Die oberste Zeile der Konfiguration zeigt die Beschriftung des Felds.  Einen neuen Fall durch ein Formular starten Textfelder haben zusätzlich die Option `Mehrzeilig`, um die Eingabe von längeren Texten zu ermöglichen. Im Bereich `Ein Feld hinzufügen` befindet sich die Palette von verfügbaren Formularfelder. Um ein Formularfeld hinzuzufügen klicken Sie einfach den entsprechenden Typ.  Der `Formularfelder`-Abschnitt zeigt die Felder an, die zu einem Formular hinzufügen können. Über der Palette finden Sie eine Auswahl von bereits vorhanden Formularfeldern. Wenn Sie eins dieser Felder in Ihrem aktuellen Formular wiederverwenden möchten, können Sie es einfach in dieser Liste auswählen. Der Formulareditor mit einem leeren Formular Dieses Formular hat eine Beschreibung (`Bitte geben Sie die Details zu dieser Person ein`) und zwei Felder. Das Fragezeichen-Symbol neben `Name` zeigt, dass hier eine zusätzliche Beschreibung hinterlegt wurde.  Um ein Formular als Prozessauslöser zu verwenden, wählen sie im Prozesseditor unter :ref:`Auslöser <triggers>` `Per Formular`. Sie können Formulare zu Aufgaben hinzufügen, indem Sie im Prozesseditor unter :ref:`Aufgaben <actions>` eine Aufgabe erstellen und in deren Konfiguration den Reiter `Formular` auswählen. Immer wenn Sie ein Formular erstellen möchten, sie es als Auslöser oder innerhalb einer Aufgabe, werden Sie dazu unseren Formulareditor verwenden. Um ein Feld wieder zu entfernen klicken Sie auf den Papierkorb in der oberen rechten Ecke der Konfiguration und bestätigen Sie die Aktion, indem Sie auf den rot hinterlegten Haken klicken. Der `Beschreibungsabschnitt` im Formulareditor ist ein Textfeld, indem Sie Anweisungen für Personen, die das Formular ausfüllen werden, hinterlegen können. Um den Text zu formatieren, können Sie die einfache Markup-Sprache `Markdown <http://daringfireball.net/projects/markdown/basics>`_ verwenden. Markdown ermöglicht es zum Beispiel, Links zu zusätzlichen Informationsquellen zu hinterlegen. Konfiguration eines Nutzerfelds Um in Nutzerfeldern die Auswahl zu erleichtern können Sie unter `Kandidaten` die Liste der zur Auswahl stehenden Personen einschränken. Formulare in Aufgaben Der Formulareditor Werte in einem Formular zu einer Aufgabe Formulardaten einsehen Wenn Sie die Option `Eingabe mehrerer Werte erlauben` aktivieren, wird das entsprechende Feld etwas anders in Formularen angezeigt. Jeder Wert, den Sie eingeben wird zu einer Liste hinzugefügt. Um einen Wert zu entfernen, klicken Sie auf das × Symbol. Wenn Sie ein Formular ausfüllen erscheinen die eingegebenen Werte danach im Aktivitäts-Stream des entsprechenden Falls.  Sie können zudem die folgenden Eigenschaften konfigurieren: Der Aktivitäts-Stream kann über die Filter am oberen Ende auch so eingeschränkt werden, dass nur Formulare angezeigt werden. Sie können einen :ref:`Formularauslöser <form-trigger>` benutzen um die Werte von :ref:`Variablen <variables>` zu setzen, wenn Sie einen neuen Fall anlegen.  Sie können Formulare in :ref:`Aufgaben <user-task>` verwenden, um sich die Werte von :ref:`Variablen <variables>` anzeigen zu lassen und zu verändern. `Eingabe mehrerer Werte erlauben` - legt fest, dass dieses Feld eine Liste von Werten akzeptiert, die Sie individuell verwalten können `Beschreibung` - Hinterlegen Sie eine ausführlichere Beschreibung zu dem Feld (optional) `Initialwert` - Ein Standardwert mit dem das Formularfeld angelegt wird (optional) `Pflichtfeld` - Das Feld muss ausgefüllt werden, damit das Formular abgesendet werden kann `Schreibgeschützt` - Das Feld kann nicht durch den Nutzer geändert werden (optional) 