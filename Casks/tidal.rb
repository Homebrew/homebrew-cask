cask :v1 => 'tidal' do
  version '3.2.3.16'
  sha256 'a6511421984b4c5ad55eb6c54e0d5743dd2b33c580d5bd83cbca7b03e3e14e52'

  # wimp.no is the official download host per the vendor homepage
  url "https://wimp.no/wweb/resources/wimp_files/release/TIDAL-#{version}-WW.dmg"
  name 'TIDAL'
  appcast 'https://client.wimpmusic.com/wimpsetup/desktop/update/tidal.update.osx.WW.xml?version=3.2.3.16',
          :sha256 => '8f3fff452fee6817ed1fafb09782d9548aaf987cdc6304170686d65963d94e4f'
  homepage 'https://tidalhifi.com/us/download'
  license :closed

  app 'TIDAL.app'
end
