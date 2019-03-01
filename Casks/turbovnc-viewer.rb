cask 'turbovnc-viewer' do
  version '2.2.1'
  sha256 'daddf542ec4206d06a1cfcd5dbbe81ad5d71d07b30a42ec213d6278947ecc631'

  # sourceforge.net/turbovnc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/turbovnc/#{version}/TurboVNC-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/turbovnc/rss'
  name 'TurboVNC'
  homepage 'https://www.turbovnc.org/'

  pkg 'TurboVNC.pkg'

  uninstall pkgutil: 'com.virtualgl.turbovnc',
            script:  {
                       executable: '/opt/TurboVNC/bin/uninstall',
                       sudo:       true,
                     }

  caveats do
    depends_on_java '8'
  end
end
