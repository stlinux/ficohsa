#Processing including jar file execution and double backup
"C:\Program Files (x86)\WinSCP\WinSCP.com" /script="C:\Program Files (x86)\WinSCP\Scripts\Honduras\SYNC_HN_INT1.bat"
timeout /t 240 /nobreak > NUL
java -jar "C:\ARCHIVOS_SGA\SWIFT_CUENTAS_T24\Swift_Cuentas_T24\SwiftCuentasT24.jar"
"C:\Program Files (x86)\WinSCP\WinSCP.com" /script="C:\Program Files (x86)\WinSCP\Scripts\Honduras\SYNC_HN_INT2.bat"
exit