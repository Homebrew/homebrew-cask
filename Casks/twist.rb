cask 'twist' do
  version '1.6.7,5988'
  sha256 'b319fc1c708ed1721f8a19683776f420165a5b434df0e4c8be15e0eeee9966ff'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
