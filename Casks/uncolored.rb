cask 'uncolored' do
  version '0.10.2'
  sha256 '7ac0c07fbe3c0b9b1bf575274e590c7070e9b30f46d16744464ae99d4aed9f07'

  # github.com/n457/Uncolored was verified as official when first introduced to the cask
  url "https://github.com/n457/Uncolored/releases/download/v.#{version}/Uncolored-v.#{version}-osx-x64.dmg"
  appcast 'https://github.com/n457/Uncolored/releases.atom',
          checkpoint: 'cb001d2238fb92f4340e03dd5203f3a0c3ba224d6d5ad189783671af7d453182'
  name '(Un)colored'
  homepage 'https://n457.github.io/Uncolored/'

  app 'Uncolored.app'
end
