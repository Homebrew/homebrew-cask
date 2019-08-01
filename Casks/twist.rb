cask 'twist' do
  version '1.6.14,6488'
  sha256 '98a4866c2dae76961b4d32479a863b7490f456a5dc5efbfd162043e004541346'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
