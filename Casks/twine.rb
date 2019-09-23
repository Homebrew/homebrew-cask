cask 'twine' do
  version '2.3.4'
  sha256 'edf92af402e4ddb88dac835f2342d99174b3c66b4102d59e44452bdfadda0911'

  # github.com/klembot/twinejs was verified as official when first introduced to the cask
  url "https://github.com/klembot/twinejs/releases/download/#{version}/twine_#{version}_macos.dmg"
  appcast 'https://github.com/klembot/twinejs/releases.atom'
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
