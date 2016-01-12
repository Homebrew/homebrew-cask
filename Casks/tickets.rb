cask 'tickets' do
  version '2.5'
  sha256 '8f2d7879581fb2604158367fb6e7eda8bc9ebf15e97781b69b64355f2832af6e'

  url 'https://www.irradiatedsoftware.com/download/Tickets.zip'
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/tickets.php',
          :sha256 => '312bb197a356e741cad77364961f5f15c06df2432fbd77af1cb418f28c8ef6d2'
  name 'Tickets'
  homepage 'https://www.irradiatedsoftware.com/tickets/'
  license :commercial

  app 'Tickets.app'
end
