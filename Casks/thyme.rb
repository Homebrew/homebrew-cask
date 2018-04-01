cask 'thyme' do
  version '0.5.1'
  sha256 '9757fff3198d379d3fc1d6231669d1eea6e0d1ba7aa2b876782998415d050ae2'

  # github.com/joaomoreno/thyme was verified as official when first introduced to the cask
  url "https://github.com/joaomoreno/thyme/releases/download/#{version}/Thyme.#{version}.dmg"
  appcast 'https://github.com/joaomoreno/thyme/releases.atom',
          checkpoint: '6b34b6cae580e164156f0625b486a803c8edcf03970b88148edce7159d3eb981'
  name 'Thyme'
  homepage 'https://joaomoreno.github.io/thyme/'

  app 'Thyme.app'
end
