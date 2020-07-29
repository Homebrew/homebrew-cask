cask "zoho-docs" do
  version :latest
  sha256 :no_check

  # files-accl.zohopublic.com/ was verified as official when first introduced to the cask
  url "https://files-accl.zohopublic.com/public/docsbin/download/393b1306f04a3078b525b2c637d0a727"
  name "Zoho Docs"
  homepage "https://www.zoho.com/docs/desktop-sync.html"

  app "Zoho Docs.app"
end
