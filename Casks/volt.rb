cask 'volt' do
  version '0.61'
  sha256 '5e480cc083a6351416ff63efe3ce3cdcca746df76af370dcfe1462cec7143705'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt.ws/'

  app 'Volt.app'
end
