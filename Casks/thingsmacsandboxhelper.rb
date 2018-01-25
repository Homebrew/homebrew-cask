cask 'thingsmacsandboxhelper' do
  version '3.10'
  sha256 '238763169c381b0a518f8bd771507bbb14fb36f0ca9845575ec407db041a623b'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name 'ThingsMacSandboxHelper'
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app 'ThingsMacSandboxHelper.app'
end
