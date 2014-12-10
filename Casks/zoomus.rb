cask :v1 => 'zoomus' do
  version :latest
  sha256 :no_check

  url 'https://zoom.us/client/latest/zoomusInstaller.pkg'
  homepage 'http://www.zoom.us'
  license :unknown    # todo: improve this machine-generated value

  pkg 'zoomusInstaller.pkg'

  uninstall :delete => '/Applications/zoom.us.app'
  zap       :delete => '~/Desktop/Zoom'
end
