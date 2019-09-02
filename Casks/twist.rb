cask 'twist' do
  version '1.6.16,6559'
  sha256 '809c4ab1a141a7ba44272e49654155e1c11c27b0836d314b51420176a26f9dc2'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
