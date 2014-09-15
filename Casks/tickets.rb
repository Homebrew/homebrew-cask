class Tickets < Cask
  version '2.5'
  sha256 '8f2d7879581fb2604158367fb6e7eda8bc9ebf15e97781b69b64355f2832af6e'

  url 'https://www.irradiatedsoftware.com/download/Tickets.zip'
  appcast 'http://www.irradiatedsoftware.com/updates/profiles/tickets.php'
  homepage 'http://www.irradiatedsoftware.com/tickets/'

  app 'Tickets.app'
end
