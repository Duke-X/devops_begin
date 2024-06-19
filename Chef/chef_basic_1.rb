#Before Writing the code let's create a directory cookbooks 
# -> mkdir cookbooks

#Now create a cookbook in it named as 'test-cb'
# -> chef generate cookbook test-cb

#Now move inside the cookbook you created and make a recipe named as 'test-rc'
# -> chef generate recipe test-rc

#Now open VI code editor and start writing the task you want chef to perform 

#TO DOWNLOAD APACHE PACKAGE, START IT & SHOW A MESSAGE ON IT'S IP ADDRESS  
package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content 'Apache server installed'
  action :create
end

service 'httpd' do
  action [:enable, :start]
end

#Finally to run the code use this command
# -> chef-client -zr "recipe[test-cb::test-rc]"
  
  
  





