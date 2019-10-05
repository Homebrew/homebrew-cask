cask 'twist' do
  version '1.6.17,6688'
  sha256 '3ac9543cd567a7a01b8c15c20988ac03879530151eb43ac30191cfff5ff07b12'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
