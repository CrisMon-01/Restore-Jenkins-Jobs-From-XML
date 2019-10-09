# Restore Jenkins Jobs From XML

Script per migrare in maniera automatica dei job di jenkins da un nuovo a un vecchio server.
Mediante l'uso delle REST API di jenkins è possibile muovere dei job da un vecchio server a un altro.
Salvare i file di configurazione dei job jenkins in una cartella, criptali con ansible vault per maggiore sicurezza.
Una volta salvati tutti i job crea nella nuova macchina un jenkins e salvane l'url. Sostituisci l'url con quello del tuo nuovo jenkins, cambia i campi user e access token
Avvia lo script e i vecchi job saranno migrati 1 a 1 sul nuovo server.
