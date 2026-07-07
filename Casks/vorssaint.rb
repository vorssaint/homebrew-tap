cask "vorssaint" do
  version "3.1.8"
  sha256 "2783b94b877ccdc1f2ec4e03f700ddff45dc542633a1dee2aac19657f9c43060"

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
