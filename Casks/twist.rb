cask 'twist' do
  version '1.6.11,6301'
  sha256 '51fec3d4b0af141c896a847153417a032c8c8bb1a93f7168cdca99d916b16e4d'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
