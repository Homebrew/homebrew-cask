cask 'volt' do
  version '0.80'
  sha256 '0496831e619afeea7336bfd234bcf415ef615c25e817cd3390faf1a300e655f6'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt-app.com/'

  app 'Volt.app'
end
