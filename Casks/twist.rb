cask 'twist' do
  version '1.5.3,4868'
  sha256 'f46c229260748cc53ff9f69dd3b132f6290cc2716e658c4760f85f90be3b4c10'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
