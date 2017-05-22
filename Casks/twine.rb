cask 'twine' do
  version '2.1.3'
  sha256 'f99eafcf3d70f6851016e350705aca563520b204cec13f86c353569f6ab362a4'

  # bitbucket.org/klembot/twinejs was verified as official when first introduced to the cask
  url "https://bitbucket.org/klembot/twinejs/downloads/twine_#{version}_osx.zip"
  name 'Twine'
  homepage 'https://twinery.org/'

  app 'Twine.app'
end
