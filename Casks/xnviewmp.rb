cask :v1 => 'xnviewmp' do
  version :latest
  sha256 :no_check

  url 'http://download.xnview.com/XnViewMP-mac.tgz'
  name 'XnViewMP'
  homepage 'http://www.xnview.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'XnViewMP.app'
end
