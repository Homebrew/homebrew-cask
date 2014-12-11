cask :v1 => 'wondershare-player' do
  version :latest
  sha256 :no_check

  url 'http://download.wondershare.com/mac-player_full1479.dmg'
  homepage 'http://www.wondershare.com/video-player/'
  license :unknown    # todo: improve this machine-generated value

  app 'Wondershare Player.app'
end
