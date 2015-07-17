node[:deploy].each do |application, deploy|
  deploy = node[:deploy][application]

  execute "add a new score" do
    cwd deploy[:current_path]
    command "#{node[:deploy][application][:rails_env]} bundle exec rake add:score"
    action :nothing
  end
end
