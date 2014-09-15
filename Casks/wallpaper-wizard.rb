class WallpaperWizard < Cask
  version '1.4'
  sha256 '73cd786b81db5eec9734277d8b74a34bb90494637bb5324f8a6a9df40ef89704'

  url 'http://cloud.coppertino.com/wallwiz/wallpaperwizard_1.4.dmg'
  appcast 'http://update.coppertino.com/wpw/appcast.xml'
  homepage 'http://wallwiz.com'

  app 'Wallpaper Wizard.app'
end
