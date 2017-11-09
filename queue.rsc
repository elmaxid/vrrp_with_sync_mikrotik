
/queue simple
add dst=ether1 max-limit=20M/20M name=Alumnos queue=UP/DOWN target="172.16.0.0/24"
add max-limit=5M/5M name="Server Mailserver" target="192.168.50.2/32"
add max-limit=5M/5M name=Webserver target="192.168.50.5/32"
add max-limit=5M/5M name=Asterisk target="192.168.50.7/32"
