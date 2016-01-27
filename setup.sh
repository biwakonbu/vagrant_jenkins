echo 'CHECK Vagrant Box.'
check_vbox=`vagrant box list | cut -d' ' -f1 | grep 'centos-7.0'`

if [ -z check_vbox ]; then
  printf '\tINSTALL Vagrant Box\n'
  vagrant box add centos-7.0 https://f0fff3908f081cb6461b407be80daf97f07ac418.googledrive.com/host/0BwtuV7VyVTSkUG1PM3pCeDJ4dVE/centos7.box
  printf '\t\033[32mok\033[0m\n'
else
  printf '\t\033[32malready INSTALLED\033[0m\n'
fi
