cask 'tg-pro' do
  version '2.14'
  sha256 'be28694d190409d878162d9c9becb8fe72fef5eb9c6489f55402361abe465f24'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '2fccfefb9efb48278c4575e603577cc820337d3cc60f549dc7fa30ee59633929'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
