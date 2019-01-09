cask 'taskade' do
  version '1.0.0'
  sha256 '8b6ceab013327e058814484206e5a04b823f0858c144de2d13c43993bd2d5c81'

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  name 'Taskade'
  homepage 'https://www.taskade.com/'

  app 'Taskade.app'
end
