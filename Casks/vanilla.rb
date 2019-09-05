cask 'vanilla' do
  version '1.1.3,33:1567125972'
  sha256 '18a06d1b329673026764f23b75412a2033e0dcc6f476014c756fda974d3ed9c1'

  # devmate.com/net.matthewpalmer.Vanilla was verified as official when first introduced to the cask
  url "https://dl.devmate.com/net.matthewpalmer.Vanilla/#{version.after_comma.before_colon}/#{version.after_colon}/Vanilla-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/net.matthewpalmer.Vanilla.xml'
  name 'Vanilla'
  homepage 'https://matthewpalmer.net/vanilla/'

  depends_on macos: '>= :sierra'

  app 'Vanilla.app'
end
