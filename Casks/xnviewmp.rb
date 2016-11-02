cask 'xnviewmp' do
  version :latest
  sha256 :no_check

  url 'http://download.xnview.com/XnViewMP-mac.tgz'
  name 'XnViewMP'
  homepage 'http://www.xnview.com/'

  auto_updates true

  app 'XnViewMP.app'
end
