cask 'volt' do
  version '0.70'
  sha256 '43bfff76cc0898c8cf416ec26cccfdc64e4b9a2f71660d5e96b4073aaf874e97'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt.ws/'

  app 'Volt.app'
end
