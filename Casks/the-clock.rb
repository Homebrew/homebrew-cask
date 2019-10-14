cask 'the-clock' do
  version '4.1'
  sha256 '52e1acb2fd56cf993ae7a6ac0e326ee1fe4cda7e006d40e08d19427566c6a021'

  url 'https://seense.com/the_clock/updateapp/the_clock.zip'
  appcast 'https://www.seense.com/the_clock/updateapp/appcast.xml'
  name 'The Clock'
  homepage 'https://seense.com/the_clock/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'The Clock.app'
end
