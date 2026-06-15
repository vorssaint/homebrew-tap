cask "vorssaint" do
  version "2.13.1"
  sha256 "ba920a36ddd6e95e8818619c4e25de4733c8abc5e5ee8ae491447f73ec248306"

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
