cask "qucs-s" do  
    version "24.3.1"
    sha256 "b1b3b799cd6a0c5205dd5a3ff284a5d4d86444fc7febad044e192b7c8bab9cb2"
    
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
