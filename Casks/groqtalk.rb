cask "groqtalk" do
  version "1.10.1"
  sha256 "f6a38dda375d05b26dfd4deb73dd6e7d216d616b336abbac6125d53e1e096864"

  url "https://github.com/mean-weasel/groqtalk/releases/download/v1.10.1/GroqTalk-1.10.1-macos.dmg"
  name "GroqTalk"
  desc "Menu bar speech-to-text transcription powered by Groq"
  homepage "https://github.com/mean-weasel/groqtalk"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "GroqTalk.app"

  zap trash: [
    "~/Library/Application Support/com.neonwatty.GroqTalk",
    "~/Library/Preferences/com.neonwatty.GroqTalk.plist",
    "~/Library/Caches/com.neonwatty.GroqTalk",
  ]
end
