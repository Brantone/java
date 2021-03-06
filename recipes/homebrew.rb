include_recipe 'homebrew'
include_recipe 'homebrew::cask'
include_recipe 'java::notify'

homebrew_tap node['java']['homebrew']['tap']
homebrew_cask "#{node['java']['homebrew']['cask']}#{node['java']['jdk_version']}" do
  notifies :write, 'log[jdk-version-changed]', :immediately
end
