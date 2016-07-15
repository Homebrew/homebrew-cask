cask 'tableau' do
  version '9.3.4'
  sha256 '5b5282c1eefeee98532adc0b3b130684f003e025829fe8f9ba91ccb3cdb18d0a'

  url "https://downloads.tableau.com/tssoftware/TableauDesktop-#{version.dots_to_hyphens}.dmg"
  name 'Tableau'
  homepage 'https://www.tableau.com/'
  license :commercial

  app 'Tableau.app'
end
