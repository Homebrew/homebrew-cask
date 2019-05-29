cask 'welly' do
  version '2.7'
  sha256 'cb24a26432d8927b1159a1865602c3f30b5190f628167c954e4d6cc723cfcb0f'

  # storage.googleapis.com was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/google-code-archive-downloads/v#{version.major}/code.google.com/welly/Welly.v#{version}.fix.zip"
  appcast 'https://csie.io/welly/update.xml'
  name 'Welly'
  homepage 'https://code.google.com/archive/p/welly'

  app 'Welly.app'

  caveats do
    discontinued
  end
end
