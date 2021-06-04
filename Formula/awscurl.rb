class Awscurl < Formula
  homepage "https://github.com/bkimmig/awscurl"
  url "https://github.com/bkimmig/awscurl/archive/v0.2.0.tar.gz"
  sha256 "d45fd5ede8194caad6e8de4ec1875a594424bec82935839eaeed55957229db40"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/bkimmig/awscurl"
    # Copy all files from their current location (GOPATH root)
    # to $GOPATH/src/github.com/bkimmig/awscurl
    bin_path.install Dir["*"]
    cd bin_path do
      # Install the compiled binary into Homebrew's `bin` - a pre-existing
      # global variable
      system "go", "build", "-o", bin/"awscurl", "."
    end
  end

  test do
    system "#{bin}/awscurl", "--help"
  end
end
