cask "portradar" do
  version "1.0.0"
  sha256 "1d4856bc94077f8c9ce59031644a4611adf742d39cc51694f9c93eef5a9fee43"

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
