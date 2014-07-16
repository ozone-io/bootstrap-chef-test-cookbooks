package "iptables"

service 'iptables' do
  action [ :disable, :stop ]
end

%w(public logs).each do |dir|
  directory "#{node.app.web_dir}/#{dir}" do
    owner node.user.name
    mode "0755"
    recursive true
  end
end

template "#{node.nginx.dir}/sites-available/#{node.app.name}.conf" do
  source "nginx.conf.erb"
  mode "0644"
end

template "#{node.app.web_dir}/public/index.html" do
  source "index.html.erb"
  mode "0777"
end

nginx_site 'default' do
  enable false
end

file "#{node.nginx.dir}/conf.d/default.conf" do
  action :delete
end

nginx_site "#{node.app.name}.conf"
