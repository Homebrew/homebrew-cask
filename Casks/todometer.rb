cask 'todometer' do
  version :latest
  sha256 :no_check

  url 'https://cassidoo.github.io/todometer/release-builds/install-todometer.dmg'
  name 'todometer'
  homepage 'https://cassidoo.github.io/todometer/'

  app 'todometer.app'
end
