cask 'trickster' do
  if MacOS.version <= :high_sierra
    version '2.8'
    sha256 '4d2e4196e5baf7ace6e7258c867eae7e5310acb1de263c4bc631ae6a95e075b6'
  else
    version '3.0'
    sha256 '187c9cfb4519363f342636744a0149ab8fbfd229bfbf3228e8bed34248d79ac4'
  end

  url "https://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'https://dl.apparentsoft.com/trickster.rss'
  name 'Trickster'
  homepage 'https://www.apparentsoft.com/trickster/'

  depends_on macos: '>= :el_capitan'

  app 'Trickster.app'
end
