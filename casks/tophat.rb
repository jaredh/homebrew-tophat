cask "tophat" do
  version "1.10.0"
  sha256 "003022328ad3a96d5cf565114db59c2f91a0b1d634e18f77154a50bce0867609"

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
