cask 'waterfox' do
  version '52.0,2'
  sha256 'b54eb997d394944601f142f9bd277e2bbf9f974668594ef0ed863e061cf99fbd'

  # storage-waterfox.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://storage-waterfox.netdna-ssl.com/releases/osx64/installer/Waterfox%20#{version.before_comma}%20Setup-#{version.after_comma}.dmg"
  name 'Waterfox'
  homepage 'https://www.waterfoxproject.org/'

  app 'Waterfox.app'
end
