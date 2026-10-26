cask "portradar" do
  version "1.0.0"
  sha256 "b8ca0761edce606009df69639d75a8168105706b587eee88f37cd2c75ec7aa94"

  url "https://github.com/joeystdio/PortRadar/releases/download/v#{version}/PortRadar.dmg"
  name "PortRadar"
  desc "Menu bar localhost and dev port manager for macOS"
  homepage "https://github.com/joeystdio/PortRadar"

  depends_on macos: ">= :sonoma"

  app "PortRadar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/PortRadar.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.local.PortRadar.plist",
  ]
end
