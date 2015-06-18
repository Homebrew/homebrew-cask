cask :v1 => 'wondershare-player' do
  version :latest
  sha256 :no_check

  url 'http://download.wondershare.com/mac-player_full1479.dmg'
  name 'Wondershare Player'
  homepage 'http://www.wondershare.com/video-player/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Wondershare'

  app 'Wondershare Player.app'
end
