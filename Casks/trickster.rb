cask 'trickster' do
  if MacOS.version <= :high_sierra
    version '2.8'
    sha256 '8b0f4146523caa1abbd02dd5efeeca4a60b82f066aece9b975bdfd0109a59c04'
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
