cask 'tnefs-enough' do
  version '3.7'
  sha256 'fd8f0fa03b03fa0307a74694abed29e797b13e844d4d435c21f588fef5bb5d79'

  url "https://www.joshjacob.com/mac-development/TNEF#{version}.dmg"
  appcast 'https://www.joshjacob.com/mac-development/tnef.php'
  name 'TNEF\'s Enough'
  homepage 'https://www.joshjacob.com/mac-development/tnef.php'

  app 'TNEF\'s Enough.app'
end
