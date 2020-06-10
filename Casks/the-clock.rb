cask 'the-clock' do
  version '4.2'
  sha256 'bddee41571375e040d19342e77b3d373e9bf5998fd52bb221861b1e7ebce3d6b'

  url 'https://seense.com/the_clock/updateapp/the_clock.zip'
  appcast 'https://www.seense.com/the_clock/updateapp/appcast.xml'
  name 'The Clock'
  homepage 'https://seense.com/the_clock/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'The Clock.app'
end
