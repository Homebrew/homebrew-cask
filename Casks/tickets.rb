cask :v1 => 'tickets' do
  version '2.5'
  sha256 '8f2d7879581fb2604158367fb6e7eda8bc9ebf15e97781b69b64355f2832af6e'

  url 'https://www.irradiatedsoftware.com/download/Tickets.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/tickets.php',
          :sha256 => '24a551412959452baf56b0cba06fdd502057f76812d596136b7fda1c14895386'
  name 'Tickets'
  homepage 'https://www.irradiatedsoftware.com/tickets/'
  license :commercial

  app 'Tickets.app'
end
