cask 'vesta' do
  version '3.4.7'
  sha256 '77f7d6fbe19b294489da75eb987c7dff37846ea357d702414a803339ac0557db'

  url "https://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name 'VESTA'
  homepage 'https://jp-minerals.org/vesta/en/'

  app 'VESTA/VESTA.app'

  zap trash: [
               '~/Library/Application Support/VESTA',
               '~/LibraryPreferences/VESTA.plist',
             ]
end
