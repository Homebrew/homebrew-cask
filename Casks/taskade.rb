cask 'taskade' do
  version '2.0.2'
  sha256 'b51e8bf0457e6cbeb9315966c003a4dcb0bac6c1ffdc5c93e8f9e950054266dd'

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast 'https://www.taskade.com/downloads'
  name 'Taskade'
  homepage 'https://www.taskade.com/'

  app 'Taskade.app'
end
