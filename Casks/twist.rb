cask 'twist' do
  version '1.5.0,4773'
  sha256 '05b69a82f7ed34e5e3dad61797017523c59c1412962b5865fa82fa892069b671'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
