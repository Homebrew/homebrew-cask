cask 'trickster' do
  version '3.0'
  sha256 '187c9cfb4519363f342636744a0149ab8fbfd229bfbf3228e8bed34248d79ac4'

  url "https://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'https://dl.apparentsoft.com/trickster.rss'
  name 'Trickster'
  homepage 'https://www.apparentsoft.com/trickster/'

  app 'Trickster.app'
end
