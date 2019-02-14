cask 'twist' do
  version '1.6.6,5688'
  sha256 'aadefb6bc811af5098c1838be0cc562b897714427fdf12b799fb12190d104988'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
