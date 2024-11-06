cask "qucs-s" do  
    version "24.4.0"
    sha256 "7a573cb525c51264a696817a1b87f5bb29f381f4dc5f8a1f57cfe77bded342f3"
    
    url "https://github.com/ra3xdh/qucs_s/releases/download/#{version}/Qucs-S-#{version}-macOS.dmg",
        verified: "github.com/ra3xdh/qucs_s/"
    name "Qucs-S"
    desc "Quite Universal Circuit Simulator with SPICE"
    homepage "https://ra3xdh.github.io/"
    
    livecheck do
      url "https://github.com/ra3xdh/qucs_s/releases"
      strategy :github_latest
    end
  
    conflicts_with cask: [
      "qucs-s@nightly",
    ]
    depends_on formula: "ngspice"
    depends_on macos: ">= :big_sur"

    app "qucs-s.app", target: "Qucs-S.app"
  
    zap trash: [
      "$HOME/Library/Application Support/qucs-s",
      "$HOME/Library/Preferences/com.example.qucs-s.plist",
      "$HOME/Library/Saved Application State/com.example.qucs-s.savedState",
    ]
end  
