cask 'teamdeck' do
  version :latest
  sha256 :no_check

  url 'https://cdn.teamdeck.io/downloads/teamdeck.dmg'
  name 'Teamdeck'
  homepage 'https://teamdeck.io/'

  app 'teamdeck.app'
end
