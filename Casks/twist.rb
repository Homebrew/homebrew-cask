cask 'twist' do
  version '1.6.21,6976'
  sha256 '92430f72103abd87be39c6272a4ac1f77800dc8d4c4239d02546ba61cafa7b3d'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
