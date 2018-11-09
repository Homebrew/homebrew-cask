cask 'the-clock' do
  version :latest
  sha256 :no_check

  url 'https://seense.com/the_clock/updateapp/the_clock.zip'
  appcast 'https://www.seense.com/the_clock/updateapp/appcast.xml'
  name 'The Clock'
  homepage 'https://seense.com/the_clock/'

  depends_on macos: '>= :yosemite'

  app 'The Clock.app'
end
