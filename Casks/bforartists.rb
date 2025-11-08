cask "bforartists" do
  arch arm: "Silicon", intel: "Intel"

  version "4.5.2"
  sha256 arm: "fa204eb58bcaa2afd0523f56b514bd61cfbde96d405e6866c916a78d9c21e7ed",
         intel: "a84c07f5df9901ce3929fb940e55de700bf04397d87bbe13fcb88cca1c8e4a84"

  url "https://github.com/Bforartists/Bforartists/releases/download/v#{version}/Bforartists-#{version}-Mac-#{arch}.dmg"
  name "Bforartists"
  desc "Blender fork with optimized UI"
  homepage "https://github.com/Bforartists/Bforartists"

  depends_on macos: ">= :big_sur"

  app "Bforartists.app"

  zap trash: [
    "~/Library/Application Support/Bforartists",
  ]
end
