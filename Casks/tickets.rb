cask 'tickets' do
  version '2.5'
  sha256 '8f2d7879581fb2604158367fb6e7eda8bc9ebf15e97781b69b64355f2832af6e'

  url 'https://www.irradiatedsoftware.com/download/Tickets.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/tickets.php',
          checkpoint: '7e2de498cbcc71c944e00256c9cb64cfa50a9ba5c1bbe20575e9743b73ec34fe'
  name 'Tickets'
  homepage 'https://www.irradiatedsoftware.com/tickets/'
  license :commercial

  app 'Tickets.app'
end
