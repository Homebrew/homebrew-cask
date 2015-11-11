cask :v1 => 'trifacta-wrangler' do
  version :latest
  sha256 :no_check

  url 'https://wrangler-distribution-cdn.trifacta.com/Trifacta+Wrangler.dmg'
  name 'Trifacta Wrangler'
  name 'Data Wrangler'
  homepage 'https://www.trifacta.com/'
  license :freemium

  app 'Trifacta Wrangler.app'
end
