node[:deploy].each do |app_name, deploy|
  directory "#{deploy[:deploy_to]}/current/data/DoctrineORMModule/Proxy" do
    action :create
  end
  directory "#{deploy[:deploy_to]}/current/data" do
    mode 0775
    user deploy[:user]
    group deploy[:group]
    recursive true
    action :create
  end
end
