cask 'trickster' do
  if MacOS.version <= :high_sierra
    version '2.8'
    sha256 '4d2e4196e5baf7ace6e7258c867eae7e5310acb1de263c4bc631ae6a95e075b6'
  else
    version '3.1'
    sha256 '08007d18098209cd79f83b4a93400c6b0229ec3bfe6668b41de83fb079bd40a2'
  end

  url "https://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'https://dl.apparentsoft.com/trickster.rss'
  name 'Trickster'
  homepage 'https://www.apparentsoft.com/trickster/'

  depends_on macos: '>= :el_capitan'

  app 'Trickster.app'
end
