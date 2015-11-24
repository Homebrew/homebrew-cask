cask :v1 => 'zoomus' do
  version :latest
  sha256 :no_check

  url 'https://zoom.us/client/latest/zoomusInstaller.pkg'
  name 'Zoom'
  name 'Zoom.us'
  homepage 'http://www.zoom.us'
  license :gratis

  pkg 'zoomusInstaller.pkg'

  uninstall :delete => '/Applications/zoom.us.app'
  zap       :delete => '~/Desktop/Zoom'
end
