cask 'tabula' do
  version '1.1.1'
  sha256 '7b02fa0cc00719316332785c116cdae815b33c5dab2157da27cec44ccacf7593'

  # github.com/tabulapdf/tabula was verified as official when first introduced to the cask
  url "https://github.com/tabulapdf/tabula/releases/download/v#{version.major_minor_patch}/tabula-mac-#{version}.zip"
  appcast 'https://github.com/tabulapdf/tabula/releases.atom',
          checkpoint: '8d9dad810499164269a195e9c8b0e4ea3a2ce60daf638762056a7d5ae91bc624'
  name 'Tabula'
  homepage 'http://tabula.technology/'

  app 'tabula/Tabula.app'
end
