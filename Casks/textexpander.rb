cask 'textexpander' do
  if Hardware::CPU.type == :ppc && MacOS.release <= :leopard
    version '2.5'
    sha256 'dfcb5a66fd590dc6dabd4fe8586a0d83cf7d264e23d9e309c0d77ae8cd89ad86'

    url "https://cdn.smilesoftware.com/TextExpander%20#{version}.zip"
  elsif MacOS.release <= :panther
    version '1.3.1'
    sha256 '1c2a94f5ee79a685f9258aeda7b27e54664a496060b0091283fbd0d80f8aa1c9'

    url "https://cdn.smilesoftware.com/TextExpander%20#{version}.dmg"
  elsif MacOS.release <= :leopard
    version '2.8.1'
    sha256 'ab6d15adef2b5c35766c99440ebc968c38869b299e6829645c74bd74294557a4'

    url "https://cdn.smilesoftware.com/TextExpander%20#{version}.dmg"
  elsif MacOS.release <= :snow_leopard
    version '3.4.2'
    sha256 '87859d7efcbfe479e7b78686d4d3f9be9983b2c7d68a6122acea10d4efbb1bfa'

    url "https://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  elsif MacOS.release <= :mavericks
    version '4.3.6'
    sha256 'ec90d6bd2e76bd14c0ca706d255c9673288f406b772e5ae6022e2dbe27848ee9'

    url "https://cdn.smilesoftware.com/TextExpander_#{version}.zip"
  else
    version '514.0-1456193896'
    sha256 'a299cdd809c3a5822375eec18a4644a785d7c442d6357a3a6f141c2e2b92a657'

    url "https://dl.smilesoftware.com/com.smileonmymac.textexpander/#{version.sub(%r{-.*}, '')}/#{version.sub(%r{.*-}, '')}/TextExpander-#{version.sub(%r{-.*}, '')}.zip"
    appcast 'https://updates.smilesoftware.com/com.smileonmymac.textexpander.xml',
            checkpoint: '797afa23ce044435f6dd6ae6a3bd65f0999e6eb451a2b945f078dd6f02475b05'
  end

  name 'TextExpander'
  homepage 'https://www.smilesoftware.com/TextExpander/'
  license :commercial

  auto_updates true
  accessibility_access true

  app 'TextExpander.app'

  uninstall login_item: 'TextExpander'

  zap delete: '~/Library/Application Support/TextExpander/'
end
