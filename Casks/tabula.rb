cask 'tabula' do
  version '1.1.0c'
  sha256 '70ec8a524e881ed66d6048776ed0ceb16a0c8b68d06e1295a39698e836274b04'

  # github.com/tabulapdf/tabula was verified as official when first introduced to the cask
  url "https://github.com/tabulapdf/tabula/releases/download/v#{version.major_minor_patch}/tabula-mac-#{version}.zip"
  appcast 'https://github.com/tabulapdf/tabula/releases.atom',
          checkpoint: '673874f3ec13bbf7ede5cb2930090ee49f1170cf95d43a578d0ba5f2d86ccee7'
  name 'Tabula'
  homepage 'http://tabula.technology/'

  app 'tabula/Tabula.app'
end
