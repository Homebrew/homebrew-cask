cask 'wondershare-filmora' do
  version '9.2.0,718'
  sha256 'd7562f6f98f6cd8a64d6571192b506bfdcef09a6050504e8ddf545d55fde145f'

  url "http://download.wondershare.com/filmora#{version.major}-mac_full#{version.after_comma}.dmg"
  name 'Wondershare Filmora9'
  homepage 'https://filmora.wondershare.com/video-editor/'

  app "Wondershare Filmora#{version.major}.app"
end
