cask :v1 => 'thyme' do
  version '0.4.2'
  sha256 '5963d199ff9d64f3cc6966ed532b949fa500c9887d391aef8eedba68ae469a45'

  url "https://joaomoreno.github.io/thyme/dist/Thyme-#{version}.dmg"
  homepage 'http://joaomoreno.github.io/thyme/'
  license :oss

  app 'Thyme.app'
end
