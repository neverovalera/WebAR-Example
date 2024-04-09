  515  VBoxManage createvm --name "Linux of Neverova 2" --ostype Ubuntu_64 --register
  516  VBoxManage modifyvm "Linux of Neverova 2" --cpus 1
  517  VBoxManage modifyvm "Linux of Neverova 2" --memory 2337
  518  VBoxManage list vms
  519  VBoxManage modifyvm "Linux of Neverova 2" --vram 132
  520  VboxManage modifyvm "Linux of Neverova 2" --nic1 nat
  521  VBoxManage modifyvm "Linux of Neverova 2" --natpf1 "SSH,tcp,127.0.0.1,1234,10.0.2.15,22"
  522  VBoxManage storagectl "Linux of Neverova 2" --name "NeverovaSATA" --add sata --controller IntelAHCI
  523  VBoxManage storagectl "Linux of Neverova 2" --name "NeverovaIDE" --add ide --controller PIIX4
  524  VBoxManage createmedium --filename DiskNeverova.vdi --size 9280
  525  VBoxManage storageattach "Linux of Neverova 2" --storagectl "NeverovaSATA" --port 0 --device 0 --type hdd --medium DiskNeverova.vdi
  526  VBoxManage storageattach "Linux of Neverova 2" --storagectl "NeverovaIDE" --port 0 --device 0 --type dvddrive --medium ubuntu-14.04.6-server-amd64.iso
  527  VBoxManage storageattach "Linux of Neverova 2" --storagectl "NeverovaIDE" --port 0 --device 0 --type dvddrive --medium ubuntu-14.04.6-server-amd64.iso
  528  VBoxManage showvminfo "Linux of Neverova 2"
  529  VBoxManage startvm "Linux of Neverova 2"
  530  VBoxManage controlvm "Linux of Neverova 2" savestate
  531  VBoxManage startvm "Linux of Neverova 2"
  532  VBoxManage controlvm "Linux of Neverova 2" poweroff
  533  VBoxManage unregistervm "Linux of Neverova 2" --delete
