node[:deploy].each do |app_name, deploy|
  directory "#{deploy[:deploy_to]}/current/data/DoctrineORMModule/Proxy" do
    recursive true
    user deploy[:user]
    group deploy[:group]
    mode 0775
    action :create
  end
  directory "#{deploy[:deploy_to]}/current/data" do
    recursive true
    mode 0775
    user deploy[:user]
    group deploy[:group]
  end
  directory "#{deploy[:deploy_to]}/current/public/correspondentes" do
    recursive true
    mode 0775
    user deploy[:user]
    group deploy[:group]
  end
  
 file "#{deploy[:deploy_to]}/current/public/complemento/cidades.json" do
    mode 0775
    user deploy[:user]
    group deploy[:group]
    action :create
  end
  
  
end
