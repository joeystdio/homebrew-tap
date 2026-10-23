cask "ghostmouse" do
  version "1.3.2"
  sha256 "f40c0f86abf1a405750614e0f9de9e5ce26136cc13aa2bbfd1b73fc05dc64fbd"

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
