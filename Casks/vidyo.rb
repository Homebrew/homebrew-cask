cask 'vidyo' do
  version '3.6.14.0003'
  sha256 'd99548771c014636876cb5cca8bcbf9ca6f0800855cde8ba25aeffce636cceb1'

  url "https://client-downloads.vidyocloud.com/VidyoDesktopInstaller-macosx-TAG_VD_#{version.dots_to_underscores}.dmg"
  name 'Vidyo'
  homepage 'https://vidyocloud.com/'

  app 'VidyoDesktopInstaller.app/Contents/Resources/VidyoDesktop.app'

  uninstall login_item: 'VidyoDesktop',
            quit:       'com.vidyo.VidyoDesktop'
end
