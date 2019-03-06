cask 'volt' do
  version '0.76'
  sha256 'ab050199b52cb59f6dfcdcaac53bba4b13936481b4e3f9d69e64a5562c498cdd'

  # github.com/voltapp/volt was verified as official when first introduced to the cask
  url "https://github.com/voltapp/volt/releases/download/#{version}/Volt.dmg"
  appcast 'https://github.com/voltapp/volt/releases.atom'
  name 'Volt'
  homepage 'https://volt-app.com/'

  app 'Volt.app'
end
