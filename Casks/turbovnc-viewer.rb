cask 'turbovnc-viewer' do
  version '2.2.3'
  sha256 '3c1ee0d6777f7359daebeacc3880a19a62e6fb35d8ded960e405deac85e08466'

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
