$TTL 604800
$ORIGIN ejemplo.com.
ejemplo.com.     IN     SOA     PC11 admin (
                        2 ; Serial
                        604800 ; Refresh
                        86400 ; Retry
                        2419200 ; Expire
                        604800 ) ; Negative Cache TTL
; Servidores de nombre
@                IN     NS      PC11.ejemplo.com.
		 IN     NS      PC12.ejemplo.com.

; Servidores de correo
		 IN	MX	10	smtp.ejemplo.com.
		 IN	MX	20	smtp2.ejemplo.com.
; Estaciones de trabajo
$INCLUDE /var/lib/bind/db.ejemplorrhh.com
$INCLUDE /var/lib/bind/db.ejemploadmin.com


; Servidores DHCP + ROUTER. Debian1-Pruebas
PC10             IN     A       192.168.41.10
	         IN     A       192.168.42.10
router		 IN	CNAME	PC10
; Servidores DNS
PC11             IN     A      192.168.41.11
dns1		 IN	CNAME	PC11
PC12             IN     A      192.168.41.12
dns2		 IN	CNAME	PC12
; Servidores de red 192.168.42.0
PC14.ejemplo.com.		IN      A       192.168.42.1
PC15				IN      A       192.168.42.2
smtp				IN	cname	PC15
pop				IN	cname	PC15
PC16				IN	A	192.168.42.3
smtp2				IN	cname	PC16
www				IN	CNAME	PC14
ftp				IN	CNAME	PC14
serverimpresion.ejemplo.com.	IN	CNAME	PC13
