cask :v1 => 'trickster' do
  version '2.3.1'
  sha256 '80b68dc8cfa98d07cf2f92139b995db529af25e3f76f31b2bb6737e19ca84195'

  url "http://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'http://dl.apparentsoft.com/trickster.rss',
          :sha256 => '467b90ac0b291399ed7da5ba091fa18a29089f8a6108c14942c6482f3d40e75d'
  name 'Trickster'
  homepage 'http://www.apparentsoft.com/trickster/'
  license :commercial

  app 'Trickster.app'
end
