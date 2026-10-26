cask "ghostmouse" do
  version "1.3.3"
  sha256 "a6f4cac27a49d7b8fca14410c1d8b46629866bbc03c7673d2708c3226bb08120"

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
