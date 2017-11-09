# Master Script > Add to scheduler 
:log info "INICIO DE BACKUP";
:log info "Guardando queues";
#
/queue simple export file="queue";
:delay 5s;
:log info "Listo.!";
#
:log info "Limpiando reglas Router Slave";
 /tool fetch address=192.168.168.10 user=ftp password=ftp123 src-path=clean.queue mode=ftp upload=yes dst-path=clean.auto.rsc ;
:delay 5s;
:log info "Listo.!";
#
:log info "Actualizando Router Slave";
 /tool fetch address=192.168.168.10 user=ftp password=ftp123 src-path=queue.rsc mode=ftp upload=yes dst-path=queue.auto.rsc ;
:delay 5s;
 /tool fetch address=192.168.168.10 user=ftp password=ftp123 src-path=final.queue mode=ftp upload=yes dst-path=final.auto.rsc ;
:log info "Actualizado!";
