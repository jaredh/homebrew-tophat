cask "tophat" do
  version "2.6.0"
  sha256 "41c6b7cf4e2da98759e91b9a9f82f9fc10aca3699596f0897429535096ea3724"

  url "https://github.com/Shopify/tophat/releases/download/v#{version}/Tophat-#{version}.zip"
  name "Tophat"
  desc "Easily install and test mobile applications with a single click"
  homepage "https://github.com/shopify/tophat"

  livecheck do
    url :url
    strategy :github_releases
  end

  app "Tophat.app"

  depends_on macos: :ventura

  zap trash: "~/Library/Preferences/com.shopify.Tophat.plist"
end
