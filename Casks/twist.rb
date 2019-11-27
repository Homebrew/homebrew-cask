cask 'twist' do
  version '1.6.19,6773'
  sha256 '80ee874519eb9691f5b5b1c1a61aaf2c91a96f549ff55a4bc436f760054304d5'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
