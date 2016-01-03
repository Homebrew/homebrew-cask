cask 'wondershare-player' do
  version :latest
  sha256 :no_check

  url 'http://download.wondershare.com/mac-player_full1479.dmg'
  name 'Wondershare Player'
  homepage 'http://www.wondershare.com/video-player/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wondershare Player.app'
end
