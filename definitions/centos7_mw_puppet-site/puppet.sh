# enable puppetmaster
systemctl enable puppetmaster

# combine /etc/puppet with the puppet-site mounted from the host
rm -f /etc/puppet/{{auth,fileserver}.conf,hiera.yaml}
ln -s /etc/puppet{-site,}/auth.conf
ln -s /etc/puppet{-site,}/fileserver.conf
ln -s /etc/puppet{-site,}/hiera.yaml

rm -rf /etc/puppet/environments/example_env/
ln -s /etc/puppet-site /etc/puppet/environments/production

ln -s /etc/puppet{-site,}/hieradata

rm -rf /etc/puppet/modules/
ln -s /etc/puppet{-site,}/modules

rm -rf /etc/puppet/resources/
ln -s /etc/puppet{-site,}/resources

ln -s /etc/puppet{-site,}/manifests/site.pp

echo "*" > /etc/puppet/autosign.conf 

echo "---
:backends: yaml
:yaml:
  :datadir: /etc/puppet/hieradata/production
:hierarchy:
  - "%{::clientcert}"
  - "%{::labrole}"
  - "%{::hostgroup}"
  - "%{::datacenter}"
  - labroles
  - common
:merge_behavior: deeper" > /etc/hiera.yaml
