cask "vorssaint" do
  version "3.0.7"
  sha256 "018c274ba8bb0215c7c133ed1da90a6be2762954a8bbf8258957117c56ad7e95"

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
