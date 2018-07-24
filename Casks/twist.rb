cask 'twist' do
  version '1.0.37,4651'
  sha256 '433fe4857b31186f7f415e625db9c4309cf2a7c913a5d5a457789a4dc0a3a016'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
