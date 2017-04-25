# Setting up

0. Install Virtual Box and Vagrant.

1.  Edit vagrant/bootstrap.sh.  Uncomment the line for generating the certificate (or supply your own cert)

2.  Edit vagrant/portal.conf.  

replace &lt;&lt;&lt;WFE1-IP&gt;&gt;&gt; and &lt;&lt;&lt;WFE2-IP&gt;&gt;&gt; with the IP addresses of your SharePoint Web front ends

Replace all instances fo portal.example.com with your SharePoint URL.

3.  Run ```vagrant up```

4. Test

Configure the hosts file on a testing machine to use the IP address of the NEW VM as your SharePoint URL.

Attempt accessing a previously unaccessible document - The ADFS login page should work, instead of the NTLM login page

5.  Update your DNS A records to use the new VM's IP instead of your SharePoint WFE IP.