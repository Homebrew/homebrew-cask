cask 'trickster' do
  version '2.8'
  sha256 '4d2e4196e5baf7ace6e7258c867eae7e5310acb1de263c4bc631ae6a95e075b6'

  url "https://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'https://dl.apparentsoft.com/trickster.rss'
  name 'Trickster'
  homepage 'https://www.apparentsoft.com/trickster/'

  app 'Trickster.app'
end
