cask "vorssaint" do
  version "3.1.0"
  sha256 "908ee5adba882776bfdeca01f184b8f73677bf48d2aefc3baacc06d7b79b9582"

  url "https://github.com/vorssaint/vorssaint-utils/releases/download/v#{version}/Vorssaint-#{version}.dmg"
  name "Vorssaint"
  desc "Menu bar toolkit with keep-awake, system monitor and volume mixer"
  homepage "https://github.com/vorssaint/vorssaint-utils"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Vorssaint.app"

  uninstall quit: "com.vorssaint.utils"

  zap trash: [
    "~/Library/Caches/com.vorssaint.utils",
    "~/Library/HTTPStorages/com.vorssaint.utils",
    "~/Library/Preferences/com.vorssaint.utils.plist",
    "~/Library/Saved Application State/com.vorssaint.utils.savedState",
  ]
end
