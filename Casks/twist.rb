cask 'twist' do
  version '1.6.10,6257'
  sha256 'cb4dd5181b66e39833c025f9c6d93d74e2abbce934d01a3121d18559a0e0eb1c'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
