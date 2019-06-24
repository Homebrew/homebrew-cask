cask 'taskade' do
  version '2.0.0'
  sha256 '3c31417398f8990b9a3ee33b177b14d6052cb420ca716d499b63d3a0f930feac'

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast 'https://www.taskade.com/downloads'
  name 'Taskade'
  homepage 'https://www.taskade.com/'

  app 'Taskade.app'
end
