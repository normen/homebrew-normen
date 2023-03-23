class Whatscli < Formula
  desc "Command-line interface for WhatsApp"
  homepage "https://github.com/normen/whatscli"
  url "https://github.com/normen/whatscli/archive/v1.0.11.tar.gz"
  sha256 "b4b2ceb1c4babe5fc53284714aebf102477543df247e2a25b533e4271d0622d7"
  license "MIT"

  head do
    url "https://github.com/normen/whatscli.git", branch: "master"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    #system "#{bin}/whatscli"
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test whatscli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
