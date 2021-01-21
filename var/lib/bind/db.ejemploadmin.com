;Estaciones de trabajo del DPTO Admin
PC3.recepcion			3600              IN     NS      192.168.41.3
PC4.recepcion.ejemplo.com.      3600              IN     NS      192.168.41.4
$ORIGIN contabilidad.ejemplo.com
PC5     3600     IN     NS      192.168.41.5
PC6     1H       IN     NS      192.168.41.6
$ORIGIN secretaria.ejemplo.com
PC7     1H       IN     NS      192.168.41.7
PC8     1H       IN     NS      192.168.41.8
PC9     1H       IN     NS      192.168.41.9
