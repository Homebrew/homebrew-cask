cask 'the-clock' do
  version '4.0.5'
  sha256 'e7035728af11ad71b5532d0965b636304de07e2a0c2fd03a5a9f677801006268'

  url 'https://seense.com/the_clock/updateapp/the_clock.zip'
  appcast 'https://www.seense.com/the_clock/updateapp/appcast.xml'
  name 'The Clock'
  homepage 'https://seense.com/the_clock/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'The Clock.app'
end
