��    I      d      �      �  g  �  u     Q   �  z   �  �   X  3        5  	   =     G     S     a     m  
   u  	   �     �     �  s   �  
   	  	   %	     /	  F  7	  	   ~
  	   �
  
   �
     �
     �
     �
  �   �
  
   a  	   l  �   v  N   (  '  w  ;   �  �   �  D  �  M   �  D   '  b  l  �   �  "   �  �   �  "   �  �   �  V   �  1   	  �   ;       <   9  h   v  J   �  \   *  X   �  3   �  4     8   I  5   �  5   �  4   �  6   #  *   Z  )   �  �   �  `   ]     �  	   �  	   �  �   �    �  �   �     �  �   �  s  y  �  �  t   �!  e   D"  �   �"  �   /#  '   $     ,$  	   4$  
   >$     I$     V$  	   b$  
   l$  	   w$     �$     �$  V   �$  
   �$     %     %  k  %     &  
   �&     �&     �&     �&     �&  �   �&  
   r'     }'  �   �'  _   R(  x  �(  F   +*  �   r*  d  L+  W   �,  O   	-  �  Y-  �   �.  #   �/  �   0  "   �0    1  ^   2  2   y2  2  �2  $   �3  C   4  j   H4  X   �4  [   5  `   h5  2   �5  :   �5  <   76  5   t6  C   �6  B   �6  :   17  *   l7  +   �7  �   �7  t   �8     9  
   9  	   (9  �   29  ;  :     S;     T<  �   i<   *Variables* contain the workflow data that the process defines. You can use variables in a case name template and when configuring the output of some action types. For example, you can use variables to repeat workflow data on a :ref:`user task form <user-task-form>`, or include a variable value in an :ref:`email task <send-email>` subject line or body text. A list simply represents a collection of values. The list has an order and all elements have a single specified type. A trigger form that populates a *Reference number* variable for use in a workflow A variable of type *user* refers to a user in your organization. A user has an object type, with the following properties: An ID has special kind of string type. Effektif creates these IDs to identify objects; they have no other meaning. An ID string looks like ``53fae958036471cea136ea83``. An email has a composite type, with the properties: Case ID Case link Case number Case variable Choice type Creator Data types Date type Due date Email address type Email addresses that receive a copy of the message (optional, :ref:`List <type-list>` of :ref:`type-email-address`) Email type File type ID type In addition to your own workflow variables, Effektif automatically creates variables that give you access to additional data in each case. The :ref:`case-variable` contains data from when Effektif creates the case. An :ref:`email-trigger` adds an :ref:`Email variable <trigger-email-variable>` that contains the trigger email. Link type List type Money type Name Number type Object types Objects have a composite type, with a list of named fields. For example: a user has an object type, with fields such as ``firstName``, ``lastName``, ``mailAddress``. Start date Text type The *Case* variable contains the data that starting a case creates. This variable has several fields. You cannot change most of this data, except for the case name and due date. The *Choice* type stores a text value from a fixed list of configured options. The *Creator* field (:ref:`type-user`) records the Effektif user who started the case. The :ref:`type-user` includes name and email address fields, so you can use the case creator to configure a :ref:`send-email` action that automatically notifies the requestor of an approval process’ result. The *Date* type stores a date, or a date and a time of day. The *Due date* field (:ref:`type-date`) stores the due date that case participants can set on the case view. Unlike the other case variables, the due date does not always have a value. The *Link* field (:ref:`type-text`) stores the URL of the case page in Effektif. You can include this link in the body of email you send using a :ref:`send-email` action, so that the recipient can immediately open the case in Effektif. Effektif includes this link its own built-in :ref:`email notifications <notifications>`. The *Link* type stores an Internet address (URL), such as a web site address. The *Money* type stores a currency amount for a particular currency. The *Name* field (:ref:`type-text`) stores the name that either the :ref:`case-creator` entered manually, or that Effektif generated. Case participants can edit this name. You might use the case name variable in a :ref:`send-email` action configuration, to send emails that clearly identify their context by prefixing the subject line with the case name. The *Number* field (:ref:`type-number`) stores a sequential case number. Each process uses a separate case number sequence for its cases. In a *Handle customer order* process, you could use the case number as a generated order reference, for example. The *Number* type stores a number. The *Start date* (:ref:`type-date`) records when the :ref:`case-creator` started the case. In an order process, for example, you could use this as the order date. The *Text* type stores plain text. The *Trigger email* variable contains the email that started the case, for processes that have an :ref:`email-trigger`. You can use this variable to use information from the email that started the case during the process, and to send email to the sender. The *Yes/No Checkbox* type stores a single value that represents either *Yes* or *No*. The *email address* type stores an email address. The *email type* stores an email, which the email trigger uses. A variable stores the email that triggers the process. You can use the email’s data fields, such as *from address* or the attachments, later in the process. The *file* type stores a file. The HTML code for an HTML email (optional, :ref:`type-text`) The case variable’s *ID* (:ref:`type-id`) uniquely identifies this case among cases for all processes. The email address to send replies to (optional, :ref:`type-email-address`) The email addresses of the recipients (:ref:`List <type-list>` of :ref:`type-email-address`) The files to attach to the email (optional, :ref:`List <type-list>` of :ref:`type-file`) The plain text message (optional, :ref:`type-text`) The sender email address (:ref:`type-email-address`) The sender’s display name (optional, :ref:`type-text`) The subject of the email (optional, :ref:`type-text`) The unique identifier for this email (:ref:`type-id`) The unique identifier for this user (:ref:`type-id`) The user’s email address (:ref:`type-email-address`) The user’s first name (:ref:`type-text`) The user’s last name (:ref:`type-text`) These variables contain all of the information from forms as well as information required by the process actions. Each case stores its own values for each workflow variable. This variable has the fields that the :ref:`type-email` defines. You cannot change their values. Trigger email variable User type Variables Variables can have different :ref:`data-types` that determine which kind of data the variable stores, such as text or a date, and whether the data is a single value or contains multiple fields. Variables store workflow information. Each variable has a user-defined name and a type. A type can represent a single value, like text or an email address. ‘Composite’ types such as user, file or email consist of several values. Composite types have a list of fields. When using expressions or configuring some action, you refer to workflow data. This can use references to variables, or to fields inside composite variables. The user interface guides you and shows the options you have. Yes/No Checkbox type You will usually add a variable to your workflow by adding a :ref:`form field <form-fields>`. You can also create variables in a :ref:`javascript`, to capture data that the script retrieves or calculates. Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-03-28 18:28+0200
PO-Revision-Date: 2016-04-15 10:33+0200
Last-Translator: Philipp Giese <philipp.giese@effektif.com>
Language-Team: 
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
X-Generator: Poedit 1.8.7
 *Variablen* beinhalten die Workflow-Daten, die durch den Prozess definiert werden. Mit Hilfe von Variablen können Sie Vorlagen zur Namensgebung für Fälle erstellen und die Ausgabekonfiguration einiger Action-Typen konfigurieren. Zum Beispiel können Sie Variablen benutzen, um Workflow-Daten, z.B. in einem :ref:`Nutzer-Task-Formular<user-task-form>`, mehrmals zu verwenden oder einen variablen Wert in einer  :ref:`Email Task <send-email>` in  Kopfzeile oder Text zu verwenden. Eine Liste fasst mehrere Objekte zusammen. Listen sind immer sortiert und beinhalten Elemente eines bestimmten Typs. Ein Auslöser-Formular, das eine *Referenznummer*-Variable zur Verwendung in einem Workflow ausfüllt Variablen vom Typ *Nutzer* referenzierten Nutzer innerhalb Ihrer Organisation. Nutzer-Variablen haben erhalten die folgenden Felder: Ins werden genutzt um Ressourcen eindeutig identifizieren zu können. Sie werden ausschließlich von Effektif erzeugt und haben keine weitere Bedeutung. Ein Beispiel für eine ID ist ``53fae958036471cea136ea83``. E-Mails enthalten die folgenden Felder: Fall-ID Fall-Link Fallnummer Fallvariable Auswahl-Typ Ersteller Datentypen Datumstyp Fälligkeit E-Mail-Adressen-Typ E-Mail-Adressen in CC (optional, :ref:`List <type-list>` of :ref:`type-email-address`) E-Mail-Typ Dateityp ID-Typ Außer Ihren eigenen Workflow-Variablen, erstellt Effektif automatisch Variablen, die Ihnen Zugriff auf weitere Informationen in jedem Fall Erlauben. Die :ref:`case-variable` beinhaltet Informationen über die Erstellung des jeweiligen Falls. Ein :ref:`email-trigger` fügt eine `E-Mail Variable <trigger-email-variable>` hinzu, die die Auslöser-E-Mail enthält. Link-Typ Listen-Typ Geldbetrag-Typ Name Zahl-Typ Objekt-Typen Objekt-Typen sind zusammengesetzte Typen, die verschiedene Felder beinhalten. Ein Nutzer ist zum Beispiel ein Objekt mit Felder wie ``firstName``, ``lastName`` und ``mailAddress``. Startdatum Text-Typ Die *Fallvariable* enthält die Daten, die durch einen beginnenden Fall erstellt werden. Diese Variable hat mehrere Felder. Außer den Fallname und Fälligkeit, können Sie diese Variablen nicht ändern. Der *Auswahl*-Typ enthält einen Text-Wert aus einer festgelegten Liste konfigurierter Optionen Das *Ersteller*-Feld (:ref:`type-user`) enthält Informationen über den Effektif-Nutzer, der den Fall gestartet hat. Der :ref:`type-user` enthält die Namen- und E-Mail-Adress-Felder. So können Sie den *Ersteller* des Falles dazu verwenden, um eine :ref:`send-email` Aktion zu erstellen, die den Anfragenden automatisch über den Ausgang eines Approval-Prozesses informiert. Der *Datumstyp* enthält ein Datum, oder ein Datum und eine Tageszeit. Das Feld *Fälligkeit* (:ref:`type-date`) enthält das Fälligkeitsdatum, das Fallbeteiligte in der Fallübersicht setzen können. Im Gegensatz zu den anderen Fallvariablen, besitzt dieses Feld nicht immer einen Wert. Das *Link*-Feld enthält die Webadresse der Fallseite in Effektif. Sie können diesen Link in eine Email einfügen, die sie über eine :ref:`send-email` Aktion versenden. So kann der Empfänger den Fall sofort in Effektif öffnen. Effektif fügt diesen Link eigenständig in E-Mails ein, die über die eingebaute Benachrichtigungsfunktion versendet werden. Der *Link*-Typ enthält eine Internetadresse (URL), wie z.B. die Adresse einer Website. Der *Geldbetrag*-Typ enthält eine Währungsmenge für eine bestimmte Währung. Das Felt *Name*  (:ref:`type-text`) enthält den Namen, den entweder durch den :ref:`case-creator` eingegeben, oder von Effektif automatisch erstellt wurde. Fallbeteilige können diesen Namen ändern. Sie können die Fall Namen-Variable in einer :ref:`send-email` Aktionskonfiguration verwenden, um E-Mails zu senden, die ihren Kontext klar referenzieren, indem sie den Fallnamen automatisch in die Kopfzeile kopieren. Das *Nummernfeld* (:ref:`type-number`) enthält eine fortlaufende Fallnummer. Jeder Prozess besitzt eine eigene Fallnummer-Sequenz für seine Fälle. In einem *Bestellungsverarbeitungsprozess*, können Sie die Fallnummer z.B. als Bestellnummer verwenden. Der *Zahl*-Typ beinhaltet eine Zahl Das Feld *Startdatum* (:ref:`type-date`) enthält Informationen darüber, wann der Ersteller einen Fall erstellt hat. In einem Bestellprozess können sie dies z.B. als Bestelldatum verwenden. Der *Text*-Typ speichert Klartext. Die *Auslöser-E-Mail* Variable enthält in Fällen mit E-Mail-Auslöser die E-Mail, die den Fall ausgelöst hat. Sie können diese Variable verwenden, um Informationen aus der Auslöser-E-Mail im Prozess zu nutzen, z.B. um eine Email zum Sender der Auslöser-E-Mail zu schicken. Der *Ja/Nein Checkbox*-Typ enthält einen einfachen Wert, der *Ja* oder *Nein* repräsentiert. Der Typ *E-Mail-Adresse* enthält E-Mail-Adressen. Der Typ *E-Mail* enthält alle Informationen über eine bestimmte Email. Dieser Typ wird zum Beispiel vom Email-Auslöser verwendet um Daten über die eingetroffene Email zur Verfügung zu stellen. Dadurch können Informationen, wie zum Beispiel der Absender oder die Anhänge im Workflow verwendet werden. Der Typ *Datei* referenziert Dateien Der HTML-formatierte Inhalt der E-Mail (optional, :ref:`type-text`) Die *ID* (:ref:`type-id`) der Fallvariable identifiziert diesen Fall unter allen Prozessfällen eindeutig. Die E-Mail-Adresse, an die geantwortet werden soll (optional, :ref:`type-email-address`) Die E-Mail-Adressen der Empfänger (:ref:`List <type-list>` vom  :ref:`type-email-address`) Die an die E-Mail anzuhängenden Dateien (optional, :ref:`List <type-list>` of :ref:`type-file`) Die Klartextnachricht (optional, :ref:`type-text`) Die E-Mail-Adresse des Senders (:ref:`type-email-address`) Der angezeigte Name des Senders (optional, :ref:`type-text`) Die Kopfzeile der E-Mail (optional, :ref:`type-text`) Der individuelle Identitätscode für diese E-Mail (:ref:`type-id`) Der einzigartige Identifikator für diesen Nutzer (:ref:`type-id`) Die E-Mail-Adresse des Nutzers (:ref:`type-email-address`) Der Vorname des Nutzers (:ref:`type-text`) Der Nachname des Nutzers (:ref:`type-text`) Diese Variablen beinhalten alle Formulardaten und die Informationen, die benötigt werden, um die Aktionen des Prozesses auszuführen. Jeder Fall besitzt seine eigenen Werte für jede Workflow-Variable. Die Felder dieser Variable werden durch den :ref:`type-email` definiert. Sie können daher ihre Werte nicht ändern. Auslöser-E-Mail Variable Nutzer-Typ Variablen Variablen können verschiedene :ref:`data-types` enthalten, die festlegen, welche Art von Daten die Variable enthält, so wie Text oder ein Datum. Außerdem legt sie fest, ob die Variable einen Wert oder mehrere Felder enthält. Variablen enthalten Workflow-Information. Jede Variable hat einen nutzerdefinierten Namen und Typen. Ein Typ kann ein einzelner Wert sein, wie Text oder eine E-Mail Adresse. Zusammengesetzte Typen, wie Nutzer-, Datei- oder E-Mail-Typen, besitzen mehrere Werte Zusammengesetzte Typen bestehen aus Listen mit Feldern. Wenn Sie Aktionen konfigurieren, referenzieren Sie Workflowdaten. Dies können Referenzen zu Variablen selbst oder Feldern innerhalb der Variablen sein. Die Nutzeroberfläche hilft Ihnen bei dieser Auswahl und zeigt jeweils alle verfügbaren Optionen auf.  Ja/Nein Checkbox-Typ Im Normalfall fügen Sie eine Variable zu Ihrem Workflow hinzu, indem Sie :ref:` Formularfelder<form-fields>` hinzufügen. Sie können auch in  einem :ref:`javascript` Variablen definieren, um Daten, die das Script berechnet oder abruft, zu erfassen. 