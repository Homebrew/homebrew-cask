cask "usmart-trade" do
  version "3.20.0,1a879021-a3eb-4059-b141-5760ac163737,2023-03-24"
  sha256 "a48955eb6df082ccc6e1612cf213c7dd60c50ece4d2f1eeff8f6cc06bcf02888"

  url "https://jy-common-prd-1257884527.cos.ap-guangzhou.myqcloud.com/admin/app-version-file/#{version.csv.third}/#{version.csv.second}/uSMART%20Trade-#{version.csv.first}.dmg",
      verified: "jy-common-prd-1257884527.cos.ap-guangzhou.myqcloud.com/admin/app-version-file/"
  name "uSMART Trade"
  desc "Trade Stocks & Options"
  homepage "https://www.usmart.hk/"

  livecheck do
    url "https://www.usmart.hk/en/download"
    regex(%r{/(\d{4}\b[._-]\d{2}\b[._-]\d{2}\b)/([0-9a-f]{8}\b-[0-9a-f]{4}\b-[0-9a-f]{4}\b-[0-9a-f]{4}\b-[0-9a-f]{12})
/uSMART Trade[._-](\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page|
      page.scan(regex)
          .map { |match| "#{match[2]},#{match[1]},#{match[0]}" }
    end
  end

  app "uSMART Trade.app"
end
