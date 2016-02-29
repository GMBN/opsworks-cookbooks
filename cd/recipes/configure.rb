node[:deploy].each do |app_name, deploy|
  directory "#{deploy[:deploy_to]}/current/data/DoctrineORMModule/Proxy" do
    user deploy[:user]
    group deploy[:group]
    mode 0775
    recursive true
    action :create
  end
  directory "#{deploy[:deploy_to]}/current/data" do
    mode 0775
    user deploy[:user]
    group deploy[:group]
    recursive true
  end
  directory "#{deploy[:deploy_to]}/current/public/correspondentes" do
    mode 0775
    user deploy[:user]
    group deploy[:group]
    recursive true
  end
  
 file "#{deploy[:deploy_to]}/current/public/complemento/cidades.json" do
    mode 0775
    user deploy[:user]
    group deploy[:group]
    action :create
  end
  
  
end
