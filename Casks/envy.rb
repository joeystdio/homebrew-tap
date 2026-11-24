cask "envy" do
  version "1.1.1"
  sha256 "511a41d47a179779fb0a537ade890bab25a63f0f0d51a00dbdb479e96c0b2ec2"

  url "https://github.com/joeystdio/envy/releases/download/v#{version}/Envy.dmg"
  name "Envy"
  desc "Environment variables and secrets manager for terminals and coding agents"
  homepage "https://github.com/joeystdio/envy"

  depends_on macos: ">= :sequoia"

  app "Envy.app"

  zap trash: [
    "~/.agents/skills/envy",
    "~/.claude/rules/envy.md",
    "~/.config/envy",
    "~/Library/Application Support/Envy",
    "~/Library/Preferences/dev.envy.Envy.plist",
  ]
end
