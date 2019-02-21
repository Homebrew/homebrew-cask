cask 'volt' do
  version '0.63'
  sha256 '3bdb05e446b9f2748b099070b334b4497379b710636918312b4c399d5bc5d367'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt.ws/'

  app 'Volt.app'
end
