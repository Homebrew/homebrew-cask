cask 'volt' do
  version '0.62'
  sha256 '37c9f320f836058da4fbc1998dce1f16e0d09566fafac87ae345d92dce1b5a1f'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt.ws/'

  app 'Volt.app'
end
