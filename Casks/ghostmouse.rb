cask "ghostmouse" do
  version "1.3.3"
  sha256 "2abe44f246d0520d282cef37365a08ed5b4837c2c0e4048b74d5d34caabe7f39"

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
