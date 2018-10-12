cask 'twist' do
  version '1.5.4,4875'
  sha256 '93d17b953885c2646e75b5238ea4664a6d6babeb457381c0038d1f0a658a8242'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
