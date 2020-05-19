cask 'taskade' do
  version '3.1.1'
  sha256 '2ef44ffc26d16a3f35fbf742f6add8a97b17ba1e0700dd24fc316d5307c6b2a9'

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast 'https://www.taskade.com/downloads'
  name 'Taskade'
  homepage 'https://www.taskade.com/'

  app 'Taskade.app'
end
