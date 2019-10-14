cask 'thingsmacsandboxhelper' do
  version '3.18'
  sha256 '157c23c55c08dd14b244ee075e3d89684b7359e284198590ba8b091512ed7fb6'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  appcast 'https://culturedcode.com/things/mac/help/things-sandboxing-helper-things3/'
  name 'ThingsMacSandboxHelper'
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app 'ThingsMacSandboxHelper.app'
end
