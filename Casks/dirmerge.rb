cask "dirmerge" do
  version "2.1.0"
  sha256 "ce6a81b5ccf6ae185848134eedd92e213f6720d4514ad8f5857954f130e54e37"

  url "https://dirmerge.com/DirMerge.dmg"
  name "DirMerge"
  desc "Safe folder merge utility with APFS zero-space cloning & one-click undo"
  homepage "https://dirmerge.com/"

  livecheck do
    url "https://dirmerge.com/"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "DirMerge.app"
  binary "#{appdir}/DirMerge.app/Contents/Resources/dirmerge"

  zap trash: [
    "~/Library/Application Scripts/com.dirmerge.desktop",
    "~/Library/Containers/com.dirmerge.desktop",
    "~/Library/Preferences/com.dirmerge.desktop.plist",
  ]
end
