node[:deploy].each do |app_name, deploy|
  directory "{deploy[:deploy_to]}/data" do
    mode 0775
    recursive true
  end
end
