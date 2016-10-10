cask 'thyme' do
  version '0.5.1'
  sha256 '9757fff3198d379d3fc1d6231669d1eea6e0d1ba7aa2b876782998415d050ae2'

  # github.com/joaomoreno/thyme was verified as official when first introduced to the cask
  url "https://github.com/joaomoreno/thyme/releases/download/#{version}/Thyme.#{version}.dmg"
  appcast 'https://github.com/joaomoreno/thyme/releases.atom',
          checkpoint: '05388198ae32566498217e07231e5908c53127ed33ac2152c629ca867c6c1fda'
  name 'Thyme'
  homepage 'https://joaomoreno.github.io/thyme/'

  app 'Thyme.app'
end
