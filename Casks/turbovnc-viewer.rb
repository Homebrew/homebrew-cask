cask 'turbovnc-viewer' do
  version '2.2.4'
  sha256 '84e7dc130f4500d8dff327cad7831fccdf7933fd308329f9a4e5f2fc9f0533e4'

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
