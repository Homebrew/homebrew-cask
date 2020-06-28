cask 'vallum' do
  version '3.3.2'
  sha256 'ed062cd0c8a268df37db6a71d7e8a15b12d3a3adff9af1ab52d6a4cb42300ce8'

  # github.com/TheMurusTeam/Vallum/ was verified as official when first introduced to the cask
  url "https://github.com/TheMurusTeam/Vallum/releases/download/v#{version}/vallum-#{version}.zip"
  appcast 'https://github.com/TheMurusTeam/Vallum/releases.atom'
  name 'Vallum'
  homepage 'https://www.vallumfirewall.com/'

  pkg 'Vallum.pkg'

  uninstall pkgutil: 'it.murus.afw.Vallum'
end
