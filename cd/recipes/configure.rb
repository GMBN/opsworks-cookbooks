node[:deploy].each do |app_name, deploy|
  directory "#{deploy[:deploy_to]}/current/data" do
    mode 0775
    recursive true
    action :create
  end
end
