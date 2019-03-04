cask 'twist' do
  version '1.6.8,6023'
  sha256 '403956c6f1134e312c5e799bda1cf9f718ff16df513c38a387f899f64bef78e3'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
