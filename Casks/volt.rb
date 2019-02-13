cask 'volt' do
  version '0.47'
  sha256 'e765b86d614472112a0a39b7ae06ae70f06107367d2944d27238970553c6a234'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/volt_mac.zip"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt.ws/'

  app 'Volt.app'
end
