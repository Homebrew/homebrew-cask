cask 'twist' do
  version '1.0.36,4343'
  sha256 'a6d60e2b05ca17a8c8d50c4bc213a0afb685147c85bb3edb73695bdab2aff528'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml',
          checkpoint: 'ae22d6d5d9d4b1dc2018ecb31401cc08329946a43473fbbab5936c7d87f10bce'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
