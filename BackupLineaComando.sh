echo "Actualizamos en el reporitorio del git"
git add BackupLineaComando.sh
git add BackupSpectrum.v10.4.yml

git commit -m "Codificación de Backup de Spectrum"

echo "Ejecutar playbook para el backup de spectrum"
ansible-playbook BackupSpectrum.v10.4.yml -vvv --extra-vars "hostname_name=localhost.localdomain hostname__pretty=localhost redhat_user=jzavala74mz redhat_pass=V4l3r1a20 host_user=jzavala74mz host_pass=P4ssw0rd host_name=192.168.112.133  and flag_suscribir=NO"
echo "listo !!"

git push

