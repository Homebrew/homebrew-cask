cask 'volt' do
  version '0.67'
  sha256 '476ede8f27f66f1378318415db4ab3193f6bfc6aa97ece19416cf3f74410463c'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt.ws/'

  app 'Volt.app'
end
