cask 'turbovnc-viewer' do
  version '2.2.2'
  sha256 '60e73024909d9966a7587f34368f5574de12eecb7388d19ba3bbb44fd534f15f'

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
