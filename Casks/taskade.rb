cask 'taskade' do
  version '3.0.0'
  sha256 '75fa033aaaa08ac02d20f4cfbe25ec6a8ee464b42a770b9b2a7e529e46e6895f'

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast 'https://www.taskade.com/downloads'
  name 'Taskade'
  homepage 'https://www.taskade.com/'

  app 'Taskade.app'
end
