cask 'twist' do
  version '1.0.36,4448'
  sha256 'c574ca9fb2c8e5db1b9f2bab4f96f9a2d277de9a2c4e4a936e308148347cb04c'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
