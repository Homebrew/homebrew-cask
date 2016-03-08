cask 'tg-pro' do
  version '2.9.8'
  sha256 'a3e4e1c232c5ad51f9c3650dddc3882abbd6753bb3b58049ae8452dfda2f4c87'

  url "https://www.tunabellysoftware.com/resources/TGPro_#{version.dots_to_underscores}.zip"
  appcast 'https://www.tunabellysoftware.com/resources/sparkle/tgpro/profileInfo.php',
          checkpoint: '79413ed8078b17374b30b84550a6713575dc83a9b4ee719b94ad9fd07be658e3'
  name 'TG Pro'
  homepage 'https://www.tunabellysoftware.com/tgpro/'
  license :commercial

  app 'TG Pro.app'
end
