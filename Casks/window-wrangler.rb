cask :v1 => 'window-wrangler' do
  version :latest
  sha256 :no_check

  url 'http://mindflow.dk/software/windowwrangler/windowwrangler.dmg'
  name 'Window Wrangler'
  name 'WindowWrangler'
  homepage 'http://mindflow.dk/software/windowwrangler/'
  license :gratis

  app 'Window Wrangler.app'
end
