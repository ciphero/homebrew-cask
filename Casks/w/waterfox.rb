cask "waterfox" do
  version "6.0.4"
  sha256 "4686364a1e65041ec7dae80c9bac1cfeeb6df3c682ab5276fe77aa35be6d0326"

  url "https://cdn1.waterfox.net/waterfox/releases/G#{version}/Darwin_x86_64-aarch64/Waterfox%20G#{version}.dmg"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://cdn1.waterfox.net/waterfox/releases/latest/macos"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "Waterfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
