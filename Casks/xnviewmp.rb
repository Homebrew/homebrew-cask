cask :v1 => 'xnviewmp' do
  version :latest
  sha256 :no_check

  url 'http://download.xnview.com/XnViewMP-mac.tgz'
  homepage 'http://www.xnview.com/'
  license :unknown

  app 'XnViewMP.app'
end
