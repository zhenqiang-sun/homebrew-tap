cask "dirmerge" do
  version "2.0.4"
  sha256 "a3926eb443eb3e0559275cd41195cc57eb8929ac25e2928c33c6a2ec1d44ae14"

  url "https://dirmerge.com/DirMerge.dmg"
  name "DirMerge"
  desc "Safe folder merge utility with APFS zero-space cloning & one-click undo"
  homepage "https://dirmerge.com/"

  livecheck do
    url "https://dirmerge.com/"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "DirMerge.app"

  zap trash: [
    "~/Library/Application Scripts/com.dirmerge.desktop",
    "~/Library/Containers/com.dirmerge.desktop",
    "~/Library/Preferences/com.dirmerge.desktop.plist",
  ]
end
