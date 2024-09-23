cask "tophat" do
  version "1.11.0"
  sha256 "aaa5ac7b788e8c3c01c13ef89935dd5ec98aa06608665583bebcb9d6312b7903"

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
