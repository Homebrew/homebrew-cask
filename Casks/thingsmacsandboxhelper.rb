cask 'thingsmacsandboxhelper' do
  version '3.5'
  sha256 '5df5902a0e28ebd1da5b6b02776ae78fb16ff69fb9a644841884cff8d6ce8cbd'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name 'ThingsMacSandboxHelper'
  homepage 'https://culturedcode.com/things/mac/help/things-sandboxing-helper-download/'

  app 'ThingsMacSandboxHelper.app'
end
