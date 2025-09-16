cask "tophat" do
  version "2.2.0"
  sha256 "c8fd9ffe22bd475263b35726d06117c77ff713bc3c1b46ed2ef198e7345c5aa9"

  url "https://github.com/Shopify/tophat/releases/download/v#{version}/Tophat-#{version}.zip"
  name "Tophat"
  desc "Easily install and test mobile applications with a single click"
  homepage "https://github.com/shopify/tophat"

  livecheck do
    url :url
    strategy :github_releases
  end

  app "Tophat.app"

  depends_on macos: ">= :ventura"

  zap trash: "~/Library/Preferences/com.shopify.Tophat.plist"
end
