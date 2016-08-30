��    :      �      �      �  �   �  -   A     o  A   �  8   �  �   �  ?   �  �   �  �   {     %  �   E  �        �  0   �  �   �  �   �	  �   �
  �   z  x   W  :  �  #    �   /  �   �  @   p  f   �  �     ^  �  �     ]   �  '  O  S  w    �  M   �  0     8   M  T   �  C   �  0     n   P  B  �  �     �   �  	   9  G   C  0   �  ,   �  3   �  1     �   O  o   �  �   f  �      $   �  O   �  j      9   �   M   �   O  !  �   _"  A   �"     ;#  D   Q#  ]   �#  ~   �#  W   s$  �   �$  �   |%     ,&    J&  �   a'     �'  @   (  [  U(  (  �)  �   �*    �+  q   �,  �  )-  �  �.  �   \0  �    1  4   �1  �   �1  �   �2  r  x3  �   �4  �   �5  `  \6  �  �7  $  �9  B   �:  H   ;  =   b;  A   �;  I   �;  :   ,<  �   g<  r  �<  �   _>  �   3?  	   �?  O   �?  m   I@  8   �@  Z   �@  H   KA  �   �A  �   aB  �   �B  �   �C     �D  a   �D  u   +E  @   �E  p   �E   *Ad hoc* cases do not use a pre-defined process model. You can also :ref:`create an approval process model <tutorial-new-process>`. A closed case, after completing its last task A new ad hoc case Adding a document to the event stream and a task to the task list Adding a result notification using the send email action Adding a start event (1), clicking the start event mini-palette’s rectangle icon to add a user task (2), and clicking the user task mini-palette’s circle icon to add an end event (3) Adding an explicit approval decision using an exclusive gateway After choosing how the process starts, the next step is to define the ‘actions’ that you will perform when running the process. Creating and running a simple approval process is just the beginning. There are many ways you can enhance the *Approve report* process. Next steps include the following. Details of a task within a case Enter the name **Approve report**, which describes the process’ goal. This creates the new process and opens the process builder’s *Trigger* tab, which you use to define how the process starts. Enter the name **June report** to create the new case. The case details view shows the initial case, with an empty task list on the left. Entering a case name Entering a process name, to create a new process In the form builder palette, select *File* to add the field to the form. Then select the field to open its configuration panel on the right, enter the field label **Report** and select the *Mandatory* option so the form requires a file upload. In the main menu, select *Cases* and then select *Cases without a process* from the bottom of the drop-down list. This shows the :ref:`Cases <cases-overview>` view, which you can use to create and view :ref:`ad hoc cases <start-adhoc>`. Next select the start event, user task and end event in turn, and use the configuration panel to set their names to *draft for review*, *Approve report* and *report approved*, respectively. Now add a document: on the right, select *Upload a document* and select the report to review, **June report.pdf**. On the left, in the *Add a new task* text input, enter the task name **Approve report** to create a task. Now that the process is published, you can use it as a template to create the first ‘case’ for approving a document. Now you have created an run your process for the first time, you can repeat the same steps to develop your process further: select *Processes*, select the process from the list, make changes to the process model in the process editor, publish a new version and then start a new case to try out the updated process. On the *Trigger* tab, select *When a form is submitted* to add a form trigger, so you can start running the process by filling in a form. The document approval process requires a report to approve, which corresponds to a trigger form field called *Report* that you will use to upload a file. People often use workflows for document approval, a kind of management approval. This tutorial uses the example of a recurring process for approving some kind of report, which has two parts: People often use workflows for document approvals, so this tutorial uses the example of approving a report, called *June report*. Running the process - using the trigger form to start a new case Select *Create new process* to start creating a new process model. This opens the process name prompt. Select *Publish to run this process*. This creates a published version of the process, and shows the *Versions* tab, with this initial version. Select *Start new case* to finish starting the new case. This creates the case, and shows the case details view where you already see the process’ *Approve report* task in the task list on the left. The first entry in the event stream, on the bottom-right, shows the the trigger form data, including the uploaded file, which you can select to open. Select *Start new case* to start a new case. This shows the trigger form you set-up earlier, which consists of a file upload field and a submit button. Select the file field, and choose a *June report.pdf* file to attach to the case. Select *Start new case* to start creating a new ad hoc case. This opens the case name prompt. Select the *Actions* to load the graphical process editor. In the actions palette, select *Start* to add a start event to the diagram. Then, with the start event selected use the actions palette or the mini palette that appears when you select a diagram element to add a user task and end event. Select the *Approve report* task in the list to open the task details view. Under the task name, use the assignee selector to assign the task to someone, who will receive a :ref:`notification <task-assigned>`. Use the date selector to choose a due date, which will result in reminders if the case’s assignee does not complete it in time. Select the *Done* button to complete the task. As the case does not contain any other open tasks, this closes the case as well. You can recognise the case’s closed status by the grey case name background, and from the most recent event in the event stream. The *Actions* tab, after adding a single *Approve report* action to a process The *Cases* view, where you can start a new case The *Processes* view, where you can create a new process The *Trigger* tab, after defining a form trigger to start a case by uploading a file The *Versions* tab, after publishing the first version of a process The case details view, after starting a new case The event stream now shows the corresponding events, labelled *added a document* and *created Approve report*. This simple process model only contains a single task, to approve the report. The start and end events are optional, but their names help clarify the start and end statuses. Later, you can improve the workflow in various ways, but first you should run the process that you have defined so far, so you can see how it works. This tutorial introduces the simplest way to get started with Signavio Workflow. You can start without first defining a process by :ref:`start-adhoc`. To get started, in the main menu, select *Processes*. This shows the *Processes* view, which you can use to create and view :ref:`processes <process-builder>`. Tutorials Use these tutorials to learn how to get started with Signavio Workflow. Using access control to restrict process actions Using an ad hoc case for a document approval Using organisation groups to define task candidates Using process roles to automatically assign tasks You can add as many tasks to the case as you like. Use separate tasks for work that different people will do, or work that will they will complete at different times. You can also :ref:`use an ad hoc case for a document approval <tutorial-ad-hoc>` without a pre-defined process. You can also use the text box above the event stream to :ref:`add comments to the case <comments>`, to add information and collaborate with other people. You can use a similar case for any other kind of approval. Use event stream comments to add any required information, and add approval tasks the same way. Next steps: Your first document approval process defining the ‘process’ that forms a template of tasks for approving reports running the process - starting a new ‘case’ that groups the tasks for approving one particular report. use an ad hoc case for another kind of collaboration task use the :ref:`process-builder` to define a template for a repeatable process. Project-Id-Version: Signavio Workflow 3.9
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-12 14:18+0200
PO-Revision-Date: 2016-07-14 12:49+0200
Last-Translator: 
Language-Team: 
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
X-Generator: Poedit 1.8.8
 *Ad-hoc* Fälle besitzen keinen vorgefertigten Prozess. Sie können auch :ref:`einen Prozess für den Freigabeworkflow erstellen <tutorial-new-process>`. Ein geschlossener Fall, nachdem die letzte Aufgabe erledigt wurde Ein neuer ad-hoc Fall Ein Dokument zum Ereignisfeed hinzufügen und eine Aufgabe erstellen Eine Nachricht über den Ausgang des Falles durch Einfügen einer *E-Mail Aktion* hinzufügen Hinzufügen eines Startereignisses (1) und, unter Verwendung der Mini-Palette, einer Aufgabe (2) und eines Endereignisses (3). Das Hinzufügen einer expliziten Freigabeentscheidung durch Modellierung eines Gateways Nachdem Sie gewählt haben, wie der Prozess ausgelöst werden soll, müssen die Aktionen definiert werden, die während der Ausführung des Prozesses durchlaufen werden sollen. Einen neuen Freigabeprozess zu erstellen und zu starten ist nur der Anfang. Es gibt viele Wege, um den Prozess *Dokumentenfreigabe* zu verbessern. Die nächsten Schritte sind: Aufgabendetails in einem Fall Geben Sie den Namen Ihres Prozesses ein - er sollte das Prozessziel beschreiben. Mit Drücken der Eingabetaste, erstellen Sie einen neuen Prozess. Der *Auslöser*-Tab des Prozesseditors öffnet sich. Hier können Sie definieren, wann bzw. wie der Prozess ausgelöst werden soll. Geben Sie den Fallnamen ein, um einen neuen Fall zu erstellen. Die Fall-Detailansicht zeigt den anfänglichen Fall mit einer leeren Aufgabenliste links. Einen Fallnamen eintragen Eingabe eines Prozessnamens zur Erstellung eines neuen Prozesses Wählen Sie *Datei*, um dieses Formularfeld zum Auslöserformular hinzuzufügen. Wählen Sie dann das neu erstellte Feld an, um die Konfigurationseinstellungen rechts zu öffnen. Geben Sie eine Beschriftung ein (hier: *Report*) und wählen Sie weiter unten *Pflichtfeld*, somit ist der Dateiupload notwendig, damit der Fall gestartet werden kann.  Wählen Sie im Hauptmenü den Tab *Fälle* und klicken Sie dann *Fälle ohne Prozess* im *'Fälle von'* Drop-Down Menü. Hier werden alle :ref:`Fälle <cases-overview>` gelistet. Sie können die Übersicht nutzen, um :ref:`einen neuen Ad-hoc Fall zu erstellen<start-adhoc>` und Fälle einzusehen. Folgend, wählen Sie die erstellten Elemente nacheinander aus und fügen Sie jeweils ein Label über das erscheinende Menü ein, hier 'Report zur Freigabe', 'Report freigeben' und 'Report freigegeben'. Fügen Sie nun ein Dokument hinzu: Klicken Sie auf *Laden Sie eine Datei hoch* rechts und wählen Sie den freizugebenden Report aus. Klicken Sie auf *Eine neue Aufgabe hinzufügen* links und geben Sie eine Aufgabe ein, zum Beispiel *Report freigeben*, um diese zu erstellen. Da der Prozess jetzt veröffentlicht ist, können Sie ihn als Vorlage verwenden, um den ersten 'Fall' zu starten. Sie haben einen Prozess erstellt und ihn zum ersten Mal durchgeführt. Nun können Sie den Prozess auf die gleiche Weise bearbeiten und verbessern: Gehen Sie in den *Prozesse*-Tab und wählen Sie den Prozess aus der Liste. Verändern Sie den Prozess nach Ihren Wünschen im Prozesseditor, veröffentlichen Sie die überarbeitete Version und lassen Sie den Prozess zu Testzwecken erneut laufen, indem Sie einen neuen Fall starten. Um zum Beispiel, wie hier, das Ausfüllen eines Formulars als Auslöser zu definieren, wählen Sie *Per Formular* - so können Sie durch das Ausfüllen des hier definierten Formulars einen Fall auslösen. Für den Dokumentenfreigabeprozess wird das freizugebende Dokument benötigt, daher definieren wir hier einen Dateiupload als Auslöser. Das Formularfeld nennen wir treffend 'Report'. Workflows werden oftmals zur Freigabe von Dokumenten genutzt - eine Art von Management-Freigabe. Dieses Tutorial bildet eine periodische Freigabe von Reports ab, die hier aus zwei Teilen besteht. Workflows werden oft dazu verwendet, um Dokumente freizugeben. In diesem Tutorial wird diese Funktion anhand eines Reports mit dem Namen *Juni-Report* vorgeführt. Start des Prozesses mit Hilfe des Auslöserformulars Wählen Sie *Einen neuen Prozess erstellen*, um mit dem Modellieren eines neuen Prozesses zu beginnen. Es öffnet sich das Feld zur Eingabe eines Prozessnamens. Wählen Sie  *Zum Ausführen veröffentlichen*. So wird eine ausführbare Version des Prozesses erstellt und veröffentlicht. Es öffnet sich der *Versionen*-Tab, der hier nur die initiale Version des Prozesses auflistet. Wählen Sie *Neuen Fall starten*, wenn Sie das Dokument hochgeladen haben, um die Freigabe zu beginnen. Nun wird die Fallübersicht mit Aufgabenliste, die zunächst nur die Aufgabe *Report freigeben* enthält, links angezeigt. Der erste Eintrag im Ereignisfeed zeigt die  Auslöserformulardaten samt der hochgeladenen Datei. Klicken Sie sie an, um den Report zu öffnen. Wählen Sie *Neuen Fall starten*, um einen neuen Fall zu beginnen. Es öffnet sich das Auslöserformular mit dem Feld zum Dateiupload. Wählen Sie eine Datei aus und gehen Sie nun auch hier auf *Neuen Fall starten*. Wählen Sie *Neuen Fall starten*, um mit der Erstellung eines neuen ad-hoc Falles zu beginnen. Die Aktion öffnet die Eingabezeile für einen Fallnamen. Wählen Sie den *Aktionen*-Tab, um den grafischen Prozesseditor zu laden. Wählen Sie *Start* in der Aktionen-Palette, um ein Startereignis zum Prozess hinzuzufügen. Folgend können Sie die Mini-Palette verwenden, die erscheint wenn Sie das Element auswählen, um weitere Elemente, wie z.B. eine Aufgabe und ein Endereignis, zum Prozess hinzuzufügen. Wählen Sie die Aufgabe *Report freigeben* aus der Liste, um Details zu der Aufgabe anzeigen zu lassen. Sie können das linke Drop-Down Menü unter dem Namen der Aufgabe verwenden, um die Aufgabe an eine Person zu übergeben, die dann eine :ref:`Nachricht <task-assigned>` erhält. Verwenden Sie die Datumsauswahl rechts, um ein Fälligkeitsdatum zu setzen. Die der Aufgabe zugewiesene Person erhält Erinnerungen, falls die Aufgabe nicht innerhalb vom angegebenen Zeitrahmen ausgeführt worden ist. Wählen Sie den *Fertig*-Button um die Aufgabe als erledigt zu markieren. Da der Fall keine anderen offenen Aufgaben enthält, schließt diese Aktion auch den Fall. An dem grauen Hintergrund des Fallnamens und am aktualisierten Ereignisfeed können Sie erkennen, dass der Fall geschlossen ist Der *Aktionen*-Tab nach Hinzufügen der Aufgabe *Report freigeben* Die *Fälle*-Ansicht. Von hier aus können Sie einen neuen Fall starten. Der *Prozesse*-Tab. Hier können Sie neue Prozesse erstellen. Der *Auslöser*-Tab mit fertig definiertem Dateiupload-Auslöser. Der *Versionen*- Tab nach der Veröffentlichung der ersten Prozessversion Die Fallübersicht, nachdem ein neuer Fall gestartet wurde Der Ereignisfeed zeigt jetzt die durchgeführten Aktionen, wie *hat ein Dokument hinzugefügt* oder *hat Report Freigeben erstellt*. Dieses einfache Prozessmodell enthält nur die eine Aufgabe, den Report freizugeben. Das Start- und Endereignis sind optional, aber sie helfen dabei, Anfangs- und Endstatus des Prozesses genau zu erkennen. Sie können den Prozess später verändern und verbessern, doch zunächst sollten Sie das Prozessmodell auslösen und durchlaufen, um zu sehen, wie es funktioniert. Dieses Tutorial erklärt den einfachsten Weg, um die Arbeit mit Signavio Workflow zu beginnen. Durch die :ref:`start-adhoc`, können Sie anfangen mit Workflow zu arbeiten, ohne vorher einen Prozess zu erstellen. Um zu beginnen, wählen Sie den *Prozesse*-Tab im Hauptmenü. Dieser listet die verfügbaren Prozesse und Optionen zur Erstellung neuer Prozesse im :ref:`Prozesseditor <process-builder>`. Tutorials Verwenden Sie diese Tutorials um sich mit Signavio Workflow vertraut zu machen. Verwendung der Zugriffskontrolle, um die Ausführung bestimmter Aktionen auf bestimmte Rollen einzuschränken Einen Ad-Hoc Fall für eine Dokumentenfreigabe verwenden Die Verwendung von Organisationsgruppen, um Kandidaten für bestimmte Aufgaben festzulegen Die Verwendung von Prozessrollen für die automatische Aufgabenzuweisung Sie können so viele Aufgaben erstellen wie nötig. Erstellen Sie separate Aufgaben für Aktionen, die von verschiedenen Personen ausgeführt werden oder zu verschiedenen Zeiten ausgeführt werden sollen. Sie können auch  :ref:`einen ad-hoc Fall für die einmalige Dokumentenfreigabe verwenden <tutorial-ad-hoc>` ohne vorher einen Prozess erstellen zu müssen. Sie können außerdem das Textfeld über dem Ereignisfeed verwenden, um :ref:`Kommentare oder Informationen im Fall zu hinterlegen <comments>` und mit anderen Kollegen zusammenzuarbeiten. Sie können ähnliche Fälle für jede Art von Freigabe verwenden. Nutzen Sie den Ereignisfeed, um notwendige Informationen in Form von Kommentaren zu hinterlegen und fügen Sie Freigabe-Aufgaben auf dem gleichen Weg hinzu. Nächste Schritte:  Ihr erster Freigabeprozess Den 'Prozess' definieren, der eine Vorlage für die Aufgaben bietet, die zur Freigabe nötig sind Den Prozess durchlaufen - einen neuen 'Fall' starten, der die Aufgaben zur Freigabe eines bestimmten Reports vorgibt. Verwenden Sie ad-hoc Fälle für andere Arten der Zusammenarbeit Verwenden Sie den  :ref:`process-builder`, um eine Vorlage für einen sich wiederholenden Prozess zu definieren. 