cask "ghostmouse" do
  version "1.3.0"
  sha256 "28020d9dad6478c02d8981935d8c0541aa28a134b82bba302321353519de86d7"

  url "https://github.com/joeystdio/GhostMouse/releases/download/v#{version}/GhostMouse.dmg"
  name "GhostMouse"
  desc "Invisible stealth mouse mover and awake utility for macOS"
  homepage "https://github.com/joeystdio/GhostMouse"

  depends_on macos: ">= :sonoma"

  app "GhostMouse.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/GhostMouse.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.local.GhostMouse.plist",
  ]
end
