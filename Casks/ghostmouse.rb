cask "ghostmouse" do
  version "1.3.4"
  sha256 "9d13480525875681823f85ca5f30368c924fee494e335bf0aef06889d852825d"

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
