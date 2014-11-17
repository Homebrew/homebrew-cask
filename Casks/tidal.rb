class Tidal < Cask
  version '3.2.3.16'
  sha256 'a6511421984b4c5ad55eb6c54e0d5743dd2b33c580d5bd83cbca7b03e3e14e52'

  url 'https://wimp.no/wweb/resources/wimp_files/release/TIDAL-#{version}-WW.dmg'
  homepage 'https://tidalhifi.com/us/download'
  license :closed

  app 'TIDAL.app'
end
