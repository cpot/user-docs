��    >            �      �  '   �  A   %  O   g  !   �  �   �     �  V   �  o   �  �   Y  z   �  v   V     �     �  
   �  �   �     �      �     	     %	  (   >	     g	     z	  q   �	  �   

  j   �
  Y       w  j   �     �     
          ;     R     i  �   ~  �   6  �   �  �   z      *  
   K  
   V     a  Y   j  �   �  �   t  �   �  �   �  `   L  r  �  }      
  �  �   �  �   T       /        J  	   [  s   e  �   �  z   w  "  �  u    *   �  Q   �  �        �    �     �  �   �  }   |  �   �  �   �   �   )!  
   �!     �!     �!  �   �!     �"  (   �"  	   �"     �"     #     )#  '   <#  a   d#  �   �#  �   k$  S   �$  c   I%  U   �%     &  
   &     $&     D&     \&     q&  �   �&  �   '  }   �'  �   /(  #   �(      )     .)     ;)  a   D)  �   �)  �   �*  �   +  �   �+  �   �,  �  5-  }   /    �/  �   �0  �   t1     2  B   2     b2  	   u2  �   2  �   #3  �   �3  g  �4   A send email task in the process editor A task can be assigned to a user or a :ref:`process role <roles>` A task can be given a form. To complete the task, the form has to be submitted. A user task in the process editor A user task means a user has to perform a task. In the :ref:`case <cases>`, a task will be created. In the configuration form, following optional details can be specified: Action Types Actions typically have a configuration panel that opens up when you select the action. After accepting the permissions, the pop up will disappear and the connection with your account is established. After authentication is complete, you'll see the following screen that allows you to give Effektif access to your Google account. After creating a Google Drive `Upload file` task, the configuration panel shows a button to start configuring the account. All actions are displayed as lines in the 'Simple action list' and as rounded rectangles in the 'Advanced flows' view. Assignment: Attachments: Body text: Click `Show all fields` and select the variables you want to access in the script. In this example, all variables are selected. For each variable that is selected, you get an input field to specify a test value. Here you see all fields with a test value. Configuration Form taking input for JavaScript Form: Google Drive Upload file Google Drive authenticated configuration Google Drive login Google Drive permission grant Google will perform a check if you're already logged in to Google in that browser. There are 3 possible outcomes: If you're already authenticated with a single user to Google, the login screen is skipped and you go straight to the :ref:`permission screen <drive-permission>` below. If you're authenticated with multiple users to Google in this browser, select the account you want to use. If you're not yet authenticated to Google in this browser yet, you'll get a login window: In section `Files to upload`, you can select the variable field containing one or more files to be uploaded. If there was no file variable, a variable called 'File' is created automatically. If there was already a file or list of files in the variables, it is preselected. In the section `Target folder` you can now browse and select the folder you want to upload the file(s) to. JavaScript JSON values JavaScript action JavaScript configuration panel JavaScript test output JavaScript test values JavaScript variables Just like in the subject, you can combine template text with variable fields to Start by typing a `#`. See *Subject* above in this list for more details instructions on using the `#`. Next, we'll show how to work with data. Suppose there is a form elsewhere in the process that has each type of field and looks like this: Once you have configured your Google Drive account, the `Upload file` task configuration panel displays the account and also show the folders in `My Drive` in your Google Drive account. Other people in your organization will be able to see that you have configured an account, but they will not be able to see youro email address or browse your account folders. Reminder emails and escalations. Reminders: Send email Subject: The Google Drive `Upload file` task sends one or more files to an account of your choice. The JavaScript action allows developers to run a JavaScript to the process execution. After creating or selecting a JavaScript action, the configuration panel looks like this: The lower section allows you to test the script. Click `Test it` to execute the JavaScript code. The results are displayed underneath: The people to which the email is sent. You can type a plain email address, select a variable, a variable field or a user in the organization. The script then parses this JSON response using ``JSON.parse`` and updates the ``startDate`` variable in Effektif, as shown in the *Updated value* column in the test console’s variables table. The send email action sends an email to the specified user. In the configuration you can specify The subject of the email. To use process data in the subject, start by typing a `#`. If the list of variable fields is too long, you can just keep typing after the `#` to narrow the list. In combination, use the up and down arrows to select the right field. Hit enter to select the field. To remove variable fields from the subject, just delete it like it's normal text. The top section of the panel is the JavaScript text editor. By default, it already contains ``console.log('Hello World!');``. The two log statements, starting with *HTTP 200*, show the HTTP response from the web service. The response body (as set-up in Mocky) is JSON data that includes an updated value for the ``startDate`` variable, changing the date from ``2015-06-15`` to ``2015-06-16``. This example uses a test endpoint configured using `Mocky <http://www.mocky.io/>`_ to return an HTTP response. This has the following result in the Effektif test console: To add attachments, click the attachments field. If there are files in the process variables, they will be shown. Select one of the file variable fields to add these as attachments to the mail. To: Updating a variable via an external web service Upload file task User task When clicking `Test it` again, we can see the JSON structure of the variable data for the different variable types. When you click on the button `Configure a Google Drive account`, a popup window will appear that helps you integrate Effektif with your Google Drive account. When you open the JavaScript configuration again, you'll see the variables section shows some of the form field variables. You can use these variables to send data to an external web service, using the `request module <https://github.com/mikeal/request/blob/master/README.md>`_. For example, the following script sends the value of the ``startDate`` variable in an HTTP POST request to an external web service. :: Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2015-04-17 10:39+0200
PO-Revision-Date: 2015-08-18 12:50+0100
Last-Translator: Jan-Felix Schwarz <jan-felix.schwarz@signavio.com>
Language-Team: LANGUAGE <LL@li.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 1.6.5
 Eine Email senden Aktion im Prozess-Editor Eine Aufgabe kann einem Nutzer oder einer :ref:`Rolle <roles>` zugewiesen werden. In jeder Aufgabe kann auch ein Formular erstellt werden. Wenn die Aufgabe später erledigt werden muss, muss auch das entsprechende Formular ausgefüllt werden. Ein User Task im Prozess-Editor Eine User Task bedeutet, dass ein Mensch diese Aufgabe erledigen muss. Wird ein Prozess gestartet, so werden im entsprechenden :ref:`Fall <cases>` Aufgaben für diese Aktion angelegt. Wenn Sie diese Aktion konfigurieren können Sie die folgenden Attribute ändern: Aktions-Typen Die meisten Aktionen können nach Ihren Wünschen konfiguriert werden. Die Konfigurationsmöglichkeiten sehen Sie jeweils, wenn Sie eine Aktion auswählen. Nachdem der Zugriff gewährt wurde, schließt sich das Popup-Fenster. Damit ist die Verknüpfung zu Ihrem Konto eingerichtet. Nachdem Sie erfolgreich authentifiziert wurden, sehen Sie den folgenden Dialog indem Sie Effektif Zugriff auf bestimmte Aktionen innerhalb Ihres Google Kontos gestatten. Nach Erstellung einer Google Drive `Dateiupload` Aktion, wird im Konfigurationspanel ein Button angezeigt um das Konto auszuwählen. Aktionen werden in Effektif als Zeilen in der `Einfachen Aktionsliste` und als Rechtecke mit abgerundeten Ecken im `Prozesseditor` dargestellt. Zuweisung: Dateianhänge: Inhalt: Wenn Sie ein Feld in der JavaScript Aktion verwenden möchten, wählen Sie es hier aus. In unserem Beispiel werden wir alle Felder auswählen. Für jede ausgewählte Variable können Sie nun einen Testwert festlegen. Konfiguration Formular als Eingabe für das JavaScript Formular: Google Drive Dateiupload Google Drive Konfiguration Google Drive Login Zugriffsbeschränkungen in Google Drive Google prüft nun ob Sie bereits eingeloggt sind, was zu drei möglichen Resultaten führen kann: Wenn Sie bereits eingeloggt sind und nur ein Google Konto besitzen, werden Sie direkt aufgefordert Effektif :ref:`gewisse Aktionen zu erlauben <drive-permissions>`. Falls Sie mehrere Konten bei Google Drive hinterlegt haben, müssen Sie nun auswählen welches davon Sie mit Effektif verbinden möchten. Falls Sie noch nicht eingeloggt sind, sehen Sie ein Login-Fenster wie zum Beispiel: Unter `Hochzuladende Dateien` können Sie alle Dateien, die im Prozess verfügbar sind auswählen.  Im Abschnitt `Zielordner` legen Sie fest wo Ihre Datei(en) gespeichert werden sollen. JavaScript JSON-Werte JavaScript JavaScript Konfigurationsdialog JavaScript Test-Ausgabe JavaScript Testwerte JavaScript Variablen Auch hier können Sie wie im *Betreff* auf Daten aus Ihrem Prozess zugreifen. Tippen Sie einfach `#` und wählen Sie die entsprechenden Variablen aus. Als nächstes zeigen wir Ihnen, wie Sie mit Daten arbeiten. Nehmen wir einmal an im Prozess wäre ein Formular mit den folgenden Feldern definiert: Wenn Sie Ihr Google Drive-Konto verknüpft haben, zeigt das Konfigurationspanel alle Verzeichnisse innerhalb Ihres Kontos an. Andere Mitarbeiter in Ihrer Organisation können zwar sehen, welche Dateien hochgeladen werden, Sie können allerdings nicht sehen, welches Konto dazu verwendet wurde oder in Ihren Drive-Ordnern stöbern. Erinnerungsemails und Eskalationen. Erinnerungen: Email senden Betreff: Die Google Drive `Dateiupload` Aktion sendet eine oder mehrere Dateien zu einem Konto Ihrer Wahl. Mit der JavaScript Aktion kann ein Entwickler ein selbst geschrieben Script ausführen, während der Prozess ausgeführt wird. Nachdem Sie solch eine Aktion angelegt haben, sehen Sie den folgenden Konfigurationsdialog: Im unteren Teil können Sie ihr Script testen. Klicken Sie hierzu auf `Test starten`. Die Ergebnisse eines Testlaufs werden direkt darunter angezeigt. Alle Personen, die die Email empfangen werden. Hier können Sie bestehende Effektif Nutzer auswählen, Rollen und Nutzervariablen des Prozesses nutzen oder einfach eine reguläre Emailadresse eintragen. Unser Script parset den Wert der Response mittels ``JSON.parse`` und updatet dann das ``startDate`` Feld in Effektif. Dieses Verhalten sehen Sie auch in der Spalte *Neu zugewiesener Wert* in der Test-Konsole. Mit der Aktionen `Email senden` können Sie eine Email an eine Reihe von Nutzern senden. Die Konfiguration umfasst des Weiteren: Das ist der Betreff der Email. Im Betreff können Sie auch Daten aus dem Prozess verwenden. Tippen Sie dazu ein `#` um eine Liste von Variablen anzuzeigen. Ist diese Liste zu lang, können Sie sie weiter einschränken indem Sie einfach weiter den Namen der Variable tippen, die Sie einfügen möchten. Nutzen Sie auch die `Pfeil hoch` und `Pfeil runter` tasten, um einen Eintrag auszuwählen. Um eine Variable zu löschen, löschen Sie den Eintrag einfach als wäre er normaler Text. Der obere Teil ist der JavaScript Editor. Standardmäßig haben wir hier den Code ``console.log("Hello World!")`` eingefügt. Die beiden Log-Einträge, beginnend mit *HTTP 200*, zeigen die Antwort des Web-Services. Der Response Body (der in Mocky konfiguriert wurde) beinhaltet JSON Daten, die einen neuen Wert für das Feld ``startDate`` beinhalten und es von ``2015-06-15`` auf ``2015-06-16`` ändern.  Der Endpunkt im Beispiel wurde bei `Mocky <http://www.mocky.io/>`_ so konfiguriert, dass er eine HTTP Response zurück gibt. In der Effektif Konsole würden Sie dann die folgenden Ergebnisse sehen: Um eine Datei an die Email anzuhängen klicken Sie einfach in das Anhänge Feld. Die sich öffnende Liste zeigt alle zur Zeit verfügbaren Dateien im Prozess. Empfänger: Den Wert eines Feldes mit Hilfe eines externen Web Services setzen Dateiupload Aktion User Task Geben Sie ein paar Testwerte ein und klicken Sie anschließend erneut auf `Test starten`. Sie können nun sehen, wie jedes Feld im JavaScript repräsentiert wird.  Wenn Sie den Knopf `Fügen Sie ein Google Drive Konto hinzu` klicken, öffnet sich ein Popup welches Sie durch die weiteren Schritte leitet, um die Integration zwischen Effektif und Google Drive aufzusetzen. Wenn Sie die Konfiguration für die JavaScript Aktion erneut öffnen können Sie sehen, das im unteren Teil einige der Formularfelder als Variablen angezeigt werden. Die verschiedenen Felder können Sie jetzt nutzen, um zum Beispiel einen externen Service anzusprechen. Wir stellen Ihnen hierfür das `request Modul <https://github.com/mikeal/request/blob/master/README.md>`_ zur Verfügung. Das folgende Script sendet Beispielsweise den Wert der Variable ``startDate`` per HTTP POST Request an einen externen Web-Service. :: 