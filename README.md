# Setting up

1. Install [Oracle Virtual Box](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/).

2. Download all files in this repository.

3. Edit your downloaded [vagrant/portal.conf](https://github.com/crossan007/SharePoint-Office-16-Claims-Proxy/blob/master/vagrant/portal.conf).  

    replace &lt;&lt;&lt;WFE1-IP&gt;&gt;&gt; and &lt;&lt;&lt;WFE2-IP&gt;&gt;&gt; with the IP addresses of your SharePoint Web front ends

    Replace all instances fo portal.example.com with your SharePoint URL.

4.  Open an administrative command line to the directory you downloaded this repository. 
    ![Step4](https://github.com/crossan007/SharePoint-Office-16-Claims-Proxy/blob/master/step3.PNG)
  
    * Run ```vagrant up```

    * This will configure a VM with NGINX and the proxy configuration.  The NIC will be bridged to the adapter of your current machine, and it will service incoming requests on this IP.


5. Test

Configure the hosts file on a testing machine to use the IP address of the NEW VM as your SharePoint URL.

Attempt accessing a previously unaccessible document - The ADFS login page should work, instead of the NTLM login page

6.  Update your DNS A records to use the new VM's IP instead of your SharePoint WFE IP.
