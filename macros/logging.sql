{% macro learn_logging() %}
    {{ log("Call your mom!") }} --> Logs in the log
    {{ log("Call your dad!", info=True) }} --> Logs in the log and to the screen, too
--  {{ log("Call your dad!", info=True) }} --> Incorrect way to disable log messages
    {# log("Call your dad!", info=True) #} --> Correct way to disable log messages
{% endmacro %}