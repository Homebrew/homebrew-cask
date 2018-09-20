cask 'ultraedit' do
  version '18.00.0.34'
  sha256 '8525489ca804ac3400e71fb8ce86b6d873b8461f17cfe7d37b609c5004e465b9'

  url "https://downloads.ultraedit.com/main/ue/mac/UltraEdit_#{version}.dmg",
      user_agent: :fake
  appcast 'https://www.ultraedit.com/downloads/uex.html'
  name 'UltraEdit'
  homepage 'https://www.ultraedit.com/'

  app 'UltraEdit.app'
end
