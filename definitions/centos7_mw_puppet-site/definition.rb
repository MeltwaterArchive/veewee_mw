Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size=> '512',
  :disk_size => '10140',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'RedHat_64',
  :iso_file => "CentOS-7.0-1406-x86_64-NetInstall.iso",
  :iso_src => "http://ftp.riken.jp/Linux/centos/7.0.1406/isos/x86_64/CentOS-7.0-1406-x86_64-NetInstall.iso",
  :iso_md5 => "96de4f38a2f07da51831153549c8bd0c",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 300,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "veewee",
  :ssh_password => "veewee",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/usr/sbin/poweroff",
  :postinstall_files => [
    "yum.sh",
    "base.sh",
    "fix-network.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "puppet.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})
