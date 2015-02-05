# remove unnecessary stuff (negating them in the packages section doesn't do the job)
yum -y remove "iwl*firmware*" firewalld
yum -y update
yum clean all

