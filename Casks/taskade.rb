cask 'taskade' do
  version '1.0.3'
  sha256 'd0e616edf8b958d1856efe5b710eb8872afc370eed90121da3c2d039a405b86c'

  url "https://apps.taskade.com/updates/Taskade-#{version}-mac.zip"
  name 'Taskade'
  homepage 'https://www.taskade.com/'

  app 'Taskade.app'
end
