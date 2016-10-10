cask 'zoho-docs' do
  version :latest
  sha256 :no_check

  url 'https://docs.zoho.com/downloaddocument.do?docId=cm31cb748186d0ce240ed9f5733ff288d0d8a'
  name 'Zoho Docs'
  homepage 'https://www.zoho.com/docs/download-page.html'

  app 'Zoho Docs.app'
end
