cask :v1 => 'tg-pro' do
  version '2.8.8'
  sha256 'dcb4221d4b72960c306e248a0be947107ab3622b0c38570684b2f12c8ef87a44'

  url "http://www.tunabellysoftware.com/resources/TGPro_#{version.gsub('.','_')}.zip"
  name 'TG Pro'
  appcast 'http://tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          :sha256 => 'ae55143d14a7a75093439c723db19e8672952efff4e38de0e0682a5037c455de'
  homepage 'http://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
