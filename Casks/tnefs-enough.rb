cask 'tnefs-enough' do
  if MacOS.release <= :tiger
    version '2.0'
    sha256 '555ba1f181023f0a48014e1b2fe0168fbb6e58731042c57509506ddf37512c5c'

    url "http://www.joshjacob.com/mac-development/TNEF#{version}.dmg"
  elsif MacOS.release <= :snow_leopard
    version '2.2'
    sha256 '0cccaf239829961b835f0661d3a0f96fc53f3fd29533ab52172eeb357f974fb5'

    url "http://www.joshjacob.com/mac-development/TNEF#{version}.zip"
  elsif MacOS.release <= :mountain_lion
    version '3.2.1'
    sha256 '7e3328a1447587207f948907fdd76bc50b232dbf40f28a9c647ec7a0c43e2b64'

    url "http://www.joshjacob.com/mac-development/TNEF#{version}.dmg"
  else
    version '3.6'
    sha256 '75063d28eba5e436dbef8df9f9abbb095a32908830c13ea1363fb951ae5e4780'

    url "http://www.joshjacob.com/mac-development/TNEF#{version}.dmg"
  end

  name 'TNEF\'s Enough'
  homepage 'http://www.joshjacob.com/mac-development/tnef.php'
  license :gpl

  app 'TNEF\'s Enough.app'
end
