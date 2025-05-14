class Loadpyplugins < Formula
    desc "Loads Visual Studio Code plugins for Python 3.11"
    homepage "https://github.com/usrsrcdev"
    url "https://github.com/usrsrcdev/loadpyplugins/releases/download/v1.13/loadpyplugins-1.13.tar.gz"
    sha256 "2313418df4c55fe48ce39b76f15d517d07bc03283245a81c04845b2b8fbd4c93"
    version "1.13"

    def install
        bin.install Dir["*"]
        Dir["#{bin}/*"].each do |f|
        system "codesign", "--force", "--sign", "-", f if File.file?(f)
        end
      end

    def caveats
        <<~EOS
        To finish installation, execute the following file in the terminal  
  source #{bin}/export.sh
Then reopen your terminal app
        EOS
    end
    end
