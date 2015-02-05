# remove unnecessary stuff (negating them in the packages section doesn't do the job)
yum -y remove "iwl*firmware*" firewalld
# Anaconda installs the version of packages its been released with,
# not the most current one in the repo - so let's update
yum -y update
# cleanup
yum clean all

