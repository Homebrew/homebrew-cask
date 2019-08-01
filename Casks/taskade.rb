cask 'taskade' do
  version '2.0.1'
  sha256 'cb80797ff3f031ebcfa700cf0ece9a3866711d7978b8ceba36b4a1217f1390bb'

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  appcast 'https://www.taskade.com/downloads'
  name 'Taskade'
  homepage 'https://www.taskade.com/'

  app 'Taskade.app'
end
