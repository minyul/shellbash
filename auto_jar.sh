java  &{JVM_OPTS} -jar ${SPRING_OPTS} ${APP_HOME}/${APP_FILE} 1>/dev/null 2>&1 &

stop  :
kill 15 $(ps aux | grep "project_name-.*.jar" | awk '{print $2 }' )