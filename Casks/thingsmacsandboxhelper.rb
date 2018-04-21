cask 'thingsmacsandboxhelper' do
  version '3.13'
  sha256 '547d041ec327887d90d89a450d61c5c6fda538131c7590a924f003efc62753e6'

  # culturedcode.cachefly.net was verified as official when first introduced to the cask
  url "https://culturedcode.cachefly.net/things/thingssandboxhelper/#{version}/ThingsHelper.zip"
  name 'ThingsMacSandboxHelper'
  homepage "https://culturedcode.com/things/mac/help/things-sandboxing-helper-things#{version.major}/"

  app 'ThingsMacSandboxHelper.app'
end
