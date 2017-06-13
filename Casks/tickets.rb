cask 'tickets' do
  version '2.5'
  sha256 'cb31bec7ce1254249febbd090d2f1775fbe47dbc065aab48eaf2e8317b930214'

  url "http://www.irradiatedsoftware.com/downloads/Tickets_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/tickets.php',
          checkpoint: '7e2de498cbcc71c944e00256c9cb64cfa50a9ba5c1bbe20575e9743b73ec34fe'
  name 'Tickets'
  homepage 'https://www.irradiatedsoftware.com/tickets/'

  app 'Tickets.app'
end
