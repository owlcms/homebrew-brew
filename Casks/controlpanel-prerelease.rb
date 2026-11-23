cask "controlpanel-prerelease" do
  version "3.11.0-rc01"

  on_arm do
    sha256 "2d0ee42d0c556f9655f7826cb6012c7a62f2346e02a09e1fdc0a33d7540d638c"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  on_intel do
    sha256 "81f6dfadd96af0d4347da3bbffaf9bb449409b4b820e3d2a8dd66abaa9620a7b"

    url "https://github.com/owlcms/owlcms-controlpanel/releases/download/#{version}/macOS_Intel_OWLCMS.dmg",
        verified: "github.com/owlcms/owlcms-controlpanel/"
  end

  name "OWLCMS Control Panel Prerelease"
  desc "Prerelease control panel for OWLCMS weightlifting competitions"
  homepage "https://github.com/owlcms/owlcms-controlpanel"

  app "owlcms.app"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms"
  binary "#{appdir}/owlcms.app/Contents/MacOS/owlcms", target: "controlpanel"
end