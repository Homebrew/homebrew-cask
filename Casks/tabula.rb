cask 'tabula' do
  version '1.2.0'
  sha256 '14de2ac043fa6bb1180eb2217c3405e49c0f01cc2142a422e880522a30374e67'

  # github.com/tabulapdf/tabula was verified as official when first introduced to the cask
  url "https://github.com/tabulapdf/tabula/releases/download/v#{version.major_minor_patch}/tabula-mac-#{version}.zip"
  appcast 'https://github.com/tabulapdf/tabula/releases.atom'
  name 'Tabula'
  homepage 'https://tabula.technology/'

  app 'tabula/Tabula.app'
end
