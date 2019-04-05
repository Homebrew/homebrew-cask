cask 'vesta' do
  version '3.4.6'
  sha256 'eac9aa029020c5341875b26f4367e395d027e1adca38220a664bd1c9958b2420'

  url "https://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name 'VESTA'
  homepage 'https://jp-minerals.org/vesta/en/'

  app 'VESTA/VESTA.app'

  zap trash: [
               '~/Library/Application Support/VESTA',
               '~/LibraryPreferences/VESTA.plist',
             ]
end
