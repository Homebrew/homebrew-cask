cask 'volt' do
  version '0.64'
  sha256 '49edf3bea13932974e517b595fcd9707693a9e845b6394c03a121ef383013b7c'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt.ws/'

  app 'Volt.app'
end
