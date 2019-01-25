cask 'turbovnc' do
  version '2.2.1'
  sha256 'daddf542ec4206d06a1cfcd5dbbe81ad5d71d07b30a42ec213d6278947ecc631'

  # sourceforce.net was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/turbovnc/#{version}/TurboVNC-#{version}.dmg"
  name 'TurboVNC'
  homepage 'https://www.turbovnc.org/'

  depends_on cask: 'java8'

  pkg 'TurboVNC.pkg'
  appcast 'https://sourceforge.net/projects/turbovnc/rss'
  uninstall script:  {
                       executable: "#{staged_path}/Uninstall TurboVNC.app/Contents/Resources/Scripts/main.scpt",
                       sudo:       true,
                     },
            pkgutil: 'com.virtualgl.turbovnc'
end
