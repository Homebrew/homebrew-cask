cask :v1 => 'thyme' do
  version '0.5.1'
  sha256 '9757fff3198d379d3fc1d6231669d1eea6e0d1ba7aa2b876782998415d050ae2'

  url "https://github.com/joaomoreno/thyme/releases/download/#{version}/Thyme.#{version}.dmg"
  name 'Thyme'
  homepage 'http://joaomoreno.github.io/thyme/'
  license :mit

  app 'Thyme.app'
end
