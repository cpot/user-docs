��    H      \              �  /  �     �  $   �  (     #   6    Z    g  w   }  b   �  �   X	  "   &
  *   I
  Q   t
  �  �
  1   b  �   �     Q  #   d  4  �  P   �            8   7     p  %   �     �     �  �   �  	   �     �     �     �  _  �  �  7  �   �  .  V     �     �  ^   �               .     ;     L  �   d       �        �  '  �     �  �     �   �  L   n  f   �  �   "  
   �     �  �         �     ?   �  �     �       *  �   �  �!  D   `#  b   �#  �   $  e   �$  [   �$  	   V%  R  `%  .  �&  "   �'  5   (  '   ;(  #   c(  )  �(  �   �)  u   �*  r   +  p   �+       ,  #   !,  c   E,  �  �,  *   �.  �   �.     �/  '   �/  �   �/  Q   �0     �0  !   �0  @   1     W1  1   u1  &   �1     �1  �   �1     �2  F   �2     �2     �2  �   3  Z  �4  �   6    �6     �7     �7  v   �7     T8  '   j8     �8     �8  #   �8  �   �8     �9  �   �9  #   H:  	  l:     v;    �;  �   �<  w   �=  �   >  �  �>  
   V@     a@    x@  3  �A  �   �B  P   �C  �   �C  �   �D  ?  �E    �F  b   �G  n   DH  �   �H  x   ?I     �I     8J   A condition can include multiple field value comparisons. To add more sub-conditions, click the button at the bottom of the list. You can also use the select field at the top to specify that either **all** conditions in the list must evaluate to true, or that at least one of them must evaluate to true. A parallel gateway example A parallel gateway example with join A parallel gateway in the process editor A start event in the process editor A start event marks the start of a process. All process elements that do not have incoming transitions act as start elements. Start events don’t have a direct connection to triggers. You can usually leave out start events if you want to create more concise diagrams. Adding a manual decision to a process also creates a :ref:`workflow variable <variables>`. You can use this to re-use the result of a decision later in the process, either to display the entered value on another form, or to use the value in an automatic decision’s condition. After `Send goods` completes, the workflow engine will create the tasks `Receive payment` and `Send goods` immediately. After starting a new case for this process, the `Review contract` task will have decision buttons: An automatic decision usually has a default transition. You use a default transition as a fallback mechanism: if none of the conditions evaluate to true, the workflow engine follows the default transition. An end event in the process editor An exclusive gateway in the process editor An exclusive gateway must have at least one incoming and two outgoing transitions An exclusive gateway that selects an outgoing transition based on conditions that you choose models an automatic decision. For each transition, you can formulate a condition using workflow data. The workflow engine evaluates transition conditions in order, from top to bottom. The workflow engine will take the transition with the first condition that evaluates to true, using the current case’s field values. An intermediate timer event in the process editor An intermediate timer event indicates that process execution waits for a timer. You can use this to prevent Signavio Workflow creating the next task in a process until it becomes relevant. Automatic decision Automatic decision condition editor By default, the workflow engine interprets multiple outgoing transitions from an action as parallel tasks. This means that if you have multiple transitions from a user task, the workflow engine will create  concurrent tasks for all of the transitions’ destination actions. Let’s look at a simple example. Configure how long the timer waits by selecting the timer in the process editor. Control flow Customized decision buttons Decision variable values - ‘Approve’ or ‘Reject’ Default forking Default manual decision configuration Default merging Default transition During workflow execution, selecting a decision sets the variable’s value to the selected decision - the text on the decision button. In this example, the decision variable has the value ‘Approve’ or ‘Reject’. End event Equivalently: Exclusive gateway Forking If you do not completely specify a sub-condition, evaluating the whole condition will fail and the workflow engine will not follow the transition. The |warning-symbol| symbol indicates an incomplete sub-condition, while the |check-symbol| symbol indicates a valid sub-condition. Click either of these symbols to remove the sub-condition from the list. In order to use the decision you need to name the buttons which will represent the decision. For each button, the label on the right indicates the next action in the process, which Signavio Workflow will perform when someone clicks the button. In this example, when the user clicks the decision button `Print contract`, Signavio Workflow executes the `Print contract` task, but *not* the `Update contract` task. In this example, `Archive purchase order` will only start after people complete both the `Receive payment` and `Send goods` tasks. In this example, completing the `Enter purchase order` user task activates the parallel gateway. The parallel gateway will create two individual paths of execution. One will take the transition to `Receive payment` and create that user task. Meanwhile, the other will create the `Send goods` user task. Intermediate timer event Joining Like start events, you can also omit end events. End events mark the end of an execution flow: Manual decision Manual decision variable No end event Parallel Gateway Parallel gateway issues Select the exclusive gateway. Its type defaults to *manual decision*. After creating the elements and connecting them, as above, you have configured the exclusive gateway: Start event Suppose you have a user task called ‘Review contract’, an exclusive gateway and the two user tasks ‘Print contract’ and ‘Update contract’: Task decision buttons The :ref:`process builder <processes>` displays a transition an arrow from a source element to a destination element. The transition specifies that the workflow engine only ‘executes’ the destination element after completing the source element. BPMN calls a transition a ‘sequence flow’. The default transition The variable has the name ‘Decision’, by default, or the name of the gateway if it has one. You can change the variable name on the process editor’s `Details` tab, in the `Field overview`. To avoid these issues, think of all actions between forking and joining as a self-contained part of the process, such that no transitions should cross that scope. To continue the previous example, extend the purchase order process to look: To make a transition the default, select the ‘per default’ item in the selection field at the top. To specify a condition, start by selecting a field and a comparison operator. Enter either a static value in the input field on the right, or click the |binding-symbol| button to select another field. Transition Undesirable loopback Use a manual decision for an exclusive gateway when a person must make a decision. A user task must precede the gateway; this task includes making the decision. The user interface presents the decision to the user as buttons on the user task form. Use an exclusive gateway to make a choice between multiple execution paths. The exclusive gateway selects one of the outgoing transitions, and only continues execution on that transition. You can configure an exclusive gateway with a *manual decision* or an *automatic decision*. Use parallel gateways to model tasks that people will complete at the same time as each other, or one at a time but not in a particular order. To do this, you *fork* and *join* the sequence flow. Using an intermediate timer event to model an evaluation period When multiple transitions lead to a user task, the workflow engine will start the user task once for each execution flow that arrives. This means that the workflow engine does not perform implicit joining for parallel flows. When the task before the exclusive gateway - `Review contract` in this example - has a form, the form includes the decision buttons. With a parallel gateway, you can fork execution into multiple, concurrent flows. When process execution arrives in a parallel gateway, the workflow engine creates a new individual execution flow for each of the gateway’s outgoing transitions. Let’s look at the following purchase order example: You also use a parallel gateway to join concurrent paths back together. In this case, the joining parallel gateway has more then one incoming transition. Workflow execution will wait at the gateway until as many execution flows arrive as it has incoming transitions. When the last concurrent flow arrives, the joining parallel gateway will activate and the workflow engine will create one execution flow on the outgoing transition. You can combine default forking with a parallel gateway for joining. You can easily change the text on the buttons. For example, change them to `Approve` and `Reject`: You can have as many outgoing transitions as you want. The workflow engine will create all destination tasks for those transitions at once. You use transitions, gateways and events to specify the processing order of the actions in a process. You will end up with problems if you loop back over parallel gateways. To avoid situations: and this: Project-Id-Version: User Guide 2.22
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-03-20 16:35+0100
PO-Revision-Date: 2017-03-20 16:51+0100
Last-Translator: Timotheus Kampik <timotheus.kampik@signavio.com>
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Eine Bedingung kann mehrere Felder beinhalten. Um mehr als weitere Bedingungen hinzuzufügen, klicken Sie auf den Knopf am unteren Ende der Liste. In der Selektion oberhalb der Liste können Sie festlegen ob **alle** oder nur **einer** ihrer Vergleiche zutreffen müssen, damit die Bedingung zutrifft.  Beispiel eines parallelen Gateways Beispiel eines zusammenführenden parallelen Gateways Ein paralleles Gateway im Prozesseditor Ein Start Ereignis im Prozesseditor Ein Startereignis markiert den Start eines Prozesses. In Signavio Workflow werden alle Aktionen, die keine eingehenden Transitionen haben, als Startereignisse behandelt. Da Startereignisse in Signavio Workflow nicht mit Prozessauslösern zusammenhängen, können Sie diese in der Regel weg lassen. Wenn Sie eine manuelle Entscheidung verwenden wird hierdurch auch automatisch eine :ref:`Variable <variables>` erstellt, die den Ausgang der Entscheidung festhält. Hierdurch können Sie das Ergebnis der Entscheidung später im Prozess nutzen.  Nachdem `Bestellung eingeben` abgeschlossen wurde, werden sowohl `Bezahlung erhalten` und `Waren versenden` erstellt. Nachdem Sie einen neuen Fall gestartet haben, sehen Sie in der Aufgabe `Vertrag prüfen` die Entscheidungsknöpfe. Automatische Entscheidungen haben normalerweise eine Art `Plan B` für den Fall, dass keine Bedingung zutrifft.  Ein Endereignis im Prozesseditor Exklusives Gateway im Prozesseditor Ein exklusives Gateway muss mindestens eine eingehende und zwei ausgehenden Transitionen besitzen.  Wenn Sie ein Gateway für eine automatische Entscheidung konfigurieren, trifft Signavio Workflow die Entscheidung für Sie basierend auf von Ihnen festgelegten Kriterien. Sie können für jede Transition festlegen unter welcher Bedingung sie verwendet werden soll. Hierzu können Sie natürlich auch Daten aus dem Workflow als Entscheidungsbasis verwenden. Signavio Workflow wertet die Bedingungen hierbei von oben nach unten aus und nimmt die erste Transition bei der die Bedingung zutrifft. Ein Zeit-Zwischenereignis im Prozesseditor Ein Zeit-Zwischenereignis legt fest, dass die Prozessausführung für eine bestimmte Zeitspanne pausiert. Hierüber können Sie sicherstellen, dass eine Folgeaufgabe erst dann ausgeführt wird, wenn sie relevant ist. Automatische Entscheidung Editor für automatische Entscheidungen Wenn Sie eine Aktivität erstellen, der mehrere Sequenzflüsse folgen, wird diese standardmäßig wie ein paralleles Gateway behandelt. Schauen wir uns dazu ein einfaches Beispiel an. Wählen Sie das Ereignis aus und legen Sie fest, wie lange der Timer warten soll. Kontrollfluss Benutzerdefinierte Entscheidungen Werte für die Entscheidungsvariable - `Annehmen` und `Ablehnen` Standardverhalten beim Teilen Standardkonfiguration als `manuelle Entscheidung` Standardverhalten beim Zusammenführen Standard-Transition Während der Ausführung wird der Wert der Variable auf den Text des angeklickten Knopfes gesetzt. In unserem Beispiel ist das entweder `Annehmen` oder `Ablehnen`. Endereignis Der oben abgebildete Prozess ist äquivalent zu dem folgenden Prozess. Exklusives Gateway Sequenzfluss teilen Wenn Sie eine Unterbedingung nicht komplett spezifiziert haben, macht dies die komplette Bedingung ungültig, was dazu führt, dass diese nie benutzt werden wird. Das |warning-symbol| Symbol weist Sie auf solche unvollständigen Vergleiche hin. Korrekte Vergleiche werden durch das |check-symbol| Symbol dargestellt. Um einen Vergleich zu entfernen, klicken Sie auf das |warning-symbol| Symbol oder das |check-symbol| Symbol. Um die Entscheidung zu verwenden, müssen Sie die Knöpfe, die die verschiedenen Optionen darstellen, benennen. Für jeden Knopf wird rechts angezeigt welche Aktivität nach Knopfdruck ausgeführt wird. In unserem Beispiel ist dies 'Vertrag drucken', wenn der Nutzer auf Annehmen klickt und 'Vertrag updaten', wenn der Nutzer auf Ablehnen klickt. In diesem Beispiel wird `Bestellung archivieren` erst ausgeführt, wenn `Bezahlung erhalten` und `Waren versenden` abgeschlossen sind.  In diesem Beispiel wird das parallele Gateway aktiviert, wenn die Aufgabe `Bestellung eingeben` abgeschlossen ist. Das Gateway teilt nun den Sequenzfluss in zwei parallele Flüsse auf. Daher werden die beide Aufgaben `Bezahlung erhalten` und `Waren versenden` gleichzeitig erstellt. Zeit-Zwischenereignis Sequenzflüsse zusammenführen Wie Startereignisse sind auch Endereignisse optional. Endereignisse markieren jeweils das Ende der Prozessausführung. Manuelle Entscheidung Variable für die manuelle Entscheidung Kein Endereignis Paralleles Gateway Fallstricke bei parallelen Gateways Wenn Sie ein exklusives Gateway erstellen, wird dieses standardmäßig als `manuelle Entscheidung` erstellt. Nutzen Sie den Konfigurationsdialog, um weitere Einstellungen vorzunehmen. Start Ereignis Sie können zum Beispiel eine Aktivität namens `Vertrag prüfen`, ein exklusives Gateway und zwei weitere Aktivitäten `Vertrag drucken` und `Vertrag updated` haben: Entscheidungsknöpfe in der Aufgabe Der :ref:`Prozesseditor <processes>` stellt eine Transition als Pfeil dar, der zwei Aktivitäten verbindet. Die Aktion, die Ziel der Transition wird ausgeführt, wenn die Ursprungsaktion abgeschlossen ist. In BPMN wird eine Transition als `Sequenzfluss` bezeichnet. Die Standard-Transition Standardmäßig wird die Variable mit `Entscheidung`, beziehungsweise mit dem Namen des entsprechenden Gateway benannt. Sie können den Namen ändern, indem Sie das Gateway umbenennen. Alternativ können Sie den Namen auch im Reiter `Details` unter `Feldübersicht` ändern. Um solche Situationen zu verhindern stellen Sie sich alle Aktionen zwischen einem teilenden und zusammenführenden Gateway als abgeschlossenes System vor. Keine Sequenzflüsse sollten dieses System verlassen oder in dieses System hineinführen. Wir erweitern das vorherige Beispiel indem wir ein zusammenführendes Gateway und eine weitere Aktivität hinzufügen.  Um eine Transition als Standard zu definieren, öffnen Sie die Selektion über den Bedingungen und wählen Sie `standardmäßig (wenn keine andere Transition gewählt werden kann)`. Um eine Bedingung zu definieren, wählen Sie zunächst ein Feld aus dem Prozess an das Sie die Bedingung knüpfen möchten. Danach entscheiden Sie sich für die Art des Vergleiches. Zum Schluss haben Sie noch die Möglichkeit entweder einen statischen Wert, wie eine Zahl einzugeben oder das Feld mit einem anderen Wert aus dem Prozess zu vergleichen. Um dies zu tun, klicken Sie auf |binding-symbol|. Transition Unerwünschte Schleife Wenn eine Person die Entscheidung treffen soll, verwenden Sie die `manuelle Entscheidung`. In diesem Fall muss direkt vor dem exklusiven Gateway ein User Task vorhanden sein. Im Nutzerinterface wird die Entscheidung in Form von mehreren Knöpfen für den Nutzer dargestellt. Mit einem exklusiven Gateway können Sie eine Entscheidung innerhalb eines Prozesses darstellen. Diese Art von Gateway wird maximal eine der ausgehenden Transitionen triggern. In Signavio Workflow können Sie ein exklusives Gateway als `manuelle Entscheidung` oder `automatische Entscheidung` konfigurieren. Mit parallelen Gateways können ausdrücken, dass Aktivitäten parallel beziehungsweise in keiner bestimmten Reihenfolge ausgeführt werden sollen. Hierfür müssen Sie den Sequenzfluss `teilen` und später wieder `zusammenführen`. Verwenden Sie ein Zeit-Zwischenereignis zur Modellierung einer Evaluationsphase. Falls mehrere Sequenzflüsse zu einer Aufgaben führen, wird diese Aufgabe für jeden Sequenzfluss gestartet. Das bedeutet, dass kein implizites Zusammenführen der Sequenzflüsse stattfindet. Wenn Sie ein Formular zu einer Aktivität direkt vor dem Gateway hinzufügen - `Vertrag prüfen` in diesem Beispiel - enthält das Formular automatisch Schaltflächen für die entsprechende Entscheidung. Mit einem parallelen Gateway können Sie die Ausführung eines Sequenzflusses in mehrere, parallele Flüsse aufteilen. Wenn die Prozessausführung an einem parallelen Gateway angekommen ist, werden eigenständige Flüsse für jede ausgehende Transition des Gateways erzeugt. Sehen wir uns dazu das folgende Beispiel an. Um parallele Sequenzflüsse wieder zusammenzuführen, verwenden Sie ebenfalls ein paralleles Gateway. Die Ausführung des Workflows wird an dieser Stelle warten bis alle parallelen Sequenzflüsse das Zusammenführende Gateway erreicht haben und erst dann den Workflow weiterführen. Sie können dieses Standardverhalten mit einem parallelen Gateway zum Zusammenführen kombinieren. Sie können den Text auf den Knöpfen leicht ändern. Nennen Sie diese zum Beispiel `Annehmen` und `Ablehnen`. Sie können beliebig viele ausgehende Transitionen erstellen. Alle Aufgaben, die einem parallelen Gateway folgen werden simultan gestartet. Benutzen Sie Transitionen, Gateways und Ereignisse um festzulegen, wie die Aktionen in einem Prozess ausgeführt werden. Vermeiden Sie Konstrukte in denen Sie einen Sequenzfluss über ein paralleles Gateway hinweg zeichnen. Beispiele hierfür sind: und: 