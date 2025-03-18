cask "qucs-s" do  
    version "25.1.1"
    sha256 "4f1636a00eec3d6bb568f856f43dfa9a1af530d8ea468bfa32e2543c0e480b61"
    
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
    depends_on macos: ">= :monterey"

    app "qucs-s.app", target: "Qucs-S.app"
  
    zap trash: [
      "$HOME/Library/Application Support/qucs-s",
      "$HOME/Library/Preferences/com.example.qucs-s.plist",
      "$HOME/Library/Saved Application State/com.example.qucs-s.savedState",
    ]
end  
