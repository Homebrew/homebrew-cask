cask 'volt' do
  version '0.52'
  sha256 '9db2f02168a606bd84b44a36571ad00244a1634483820141292da37b6f29aac8'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt.ws/'

  app 'Volt.app'
end
