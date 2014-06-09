class Todoist < Cask
  url 'https://d2dq6e731uoz0t.cloudfront.net/3334959e6780bf9ff7dbe8fc936e0700/as/Todoist.app.zip'
  appcast 'http://todoist.com/static/native_apps/mac_app.xml'
  homepage 'https://todoist.com'
  version 'latest'
  sha256 :no_check
  link 'Todoist.app'
end
