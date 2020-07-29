cask 'vesta' do
  version '3.4.8'
  sha256 'd33aea8403662cf7ce32d8620f3f5df910b240e07acff54e4b3f17d1b146e638'

  url "https://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name 'VESTA'
  homepage 'https://jp-minerals.org/vesta/en/'

  app 'VESTA/VESTA.app'

  zap trash: [
               '~/Library/Application Support/VESTA',
               '~/LibraryPreferences/VESTA.plist',
             ]
end
