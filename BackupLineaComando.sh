echo "Actualizamos en el reporitorio del git"
git add BackupLineaComando.sh
git add BackupSpectrum.v10.4.yml

git commit -m "Codificación de Backup de Spectrum"

echo "Ejecutar playbook para el backup de spectrum"
ansible-playbook BackupSpectrum.v10.4.yml -vvv --extra-vars "hostname_name=localhost.localdomain ruta_carpeta_backups=/home/jzavala/respaldos/Spectrum"
echo "listo !!"

git push

