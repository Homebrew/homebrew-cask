cask 'tnefs-enough' do
  if MacOS.version <= :tiger
    version '2.0'
    sha256 '555ba1f181023f0a48014e1b2fe0168fbb6e58731042c57509506ddf37512c5c'

    url "http://www.joshjacob.com/mac-development/TNEF#{version}.dmg"
  elsif MacOS.version <= :snow_leopard
    version '2.2'
    sha256 '0cccaf239829961b835f0661d3a0f96fc53f3fd29533ab52172eeb357f974fb5'

    url "http://www.joshjacob.com/mac-development/TNEF#{version}.zip"
  elsif MacOS.version <= :mountain_lion
    version '3.2.1'
    sha256 '7e3328a1447587207f948907fdd76bc50b232dbf40f28a9c647ec7a0c43e2b64'

    url "http://www.joshjacob.com/mac-development/TNEF#{version}.dmg"
  else
    version '3.7'
    sha256 'fd8f0fa03b03fa0307a74694abed29e797b13e844d4d435c21f588fef5bb5d79'

    url "http://www.joshjacob.com/mac-development/TNEF#{version}.dmg"
  end

  name 'TNEF\'s Enough'
  homepage 'http://www.joshjacob.com/mac-development/tnef.php'

  app 'TNEF\'s Enough.app'
end
