cask 'volt' do
  version '0.66'
  sha256 'ef53e49bc0c91ebbfe378cbefdc0e960a727566155a92222ad5d43bcc5a1341e'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt.ws/'

  app 'Volt.app'
end
