require 'redmine'

if RAILS_ENV == 'development'
  ActiveSupport::Dependencies.load_once_paths.reject!{|x| x =~ /^#{Regexp.escape(File.dirname(__FILE__))}/}
end

require_dependency 'google_apps/hooks'

Redmine::Plugin.register :google_apps do
  name 'Google Apps plugin'
  author 'Juan Wajnerman'
  description 'Google Apps user integration'
  version '0.1'
  url 'https://github.com/waj/redmine_google_apps'
  author_url 'http://weblogs.manas.com.ar/waj'

  menu :admin_menu, :google_apps, { :controller => 'google_apps', :action => 'admin' }, :caption => 'Google Apps'

end
