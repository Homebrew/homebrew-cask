cask 'taskade' do
  version '2.0.3'
  sha256 'df68b28d2f3e9ea57215637efa225857154b4b6f0d192b3b5dc4d3dcd047571f'

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast 'https://www.taskade.com/downloads'
  name 'Taskade'
  homepage 'https://www.taskade.com/'

  app 'Taskade.app'
end
