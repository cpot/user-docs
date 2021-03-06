.. _variables:

Variables
---------

*Variables* contain the workflow data that the process defines.
You can use variables in a case name template and when configuring the output of some action types.
For example, you can use variables to repeat workflow data on a :ref:`user task form <user-task-form>`, or include a variable value in an :ref:`email task <send-email>` subject line or body text.

These variables contain all of the information from forms as well as information required by the process actions.
Each case stores its own values for each workflow variable.

You will usually add a variable to your workflow by adding a :ref:`form field <form-fields>`.
You can also create variables in a :ref:`javascript-action`, to capture data that the script retrieves or calculates.

.. figure:: /_static/images/forms/start-form.png

   A trigger form that populates *Name* and *Date of birth* variables for use in a workflow

In addition to your own workflow variables, Workflow Accelerator automatically creates variables that give you access to additional data in each case.
The :ref:`case-variable` contains data from when Workflow Accelerator creates the case.
An :ref:`email-trigger` adds an :ref:`Email variable <trigger-email-variable>` that contains the trigger email.

Variables can have different :ref:`data-types` that determine which kind of data the variable stores, such as text or a date, and whether the data has a single value or contains multiple fields.
