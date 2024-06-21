#As we all know how to make a cookbook and a recipe, so let's try to write some code directly.

#Write a recipe to get some attributes of a node & store it in a file.
file '/nodeInfo' do
  content "This is to get attributes
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end
