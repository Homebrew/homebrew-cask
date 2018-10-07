cask 'tickets' do
  version '2.5'
  sha256 'cb31bec7ce1254249febbd090d2f1775fbe47dbc065aab48eaf2e8317b930214'

  url "https://www.irradiatedsoftware.com/downloads/Tickets_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/tickets.php'
  name 'Tickets'
  homepage 'https://www.irradiatedsoftware.com/tickets/'

  app 'Tickets.app'
end
