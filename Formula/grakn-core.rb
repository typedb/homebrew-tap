class GraknCore < Formula
  desc "Grakn Core: The Knowledge Graph"
  homepage "https://grakn.ai"
  url "https://github.com/graknlabs/grakn/releases/download/1.8.2/grakn-core-all-mac-1.8.2.zip"
  sha256 "6e3c450e5d787f38b86697be48c99a4ce4489dd00fdb095b3a78286a7dc88fc2"

  bottle :unneeded

  depends_on :java => "1.8"

  def install
    libexec.install Dir["*"]
    dbpath = (var/name/"db/")
    logpath = (var/name/"log/")
    inreplace libexec/"server/conf/grakn.properties" do |s|
      s.gsub! "data-dir=server/db/", "data-dir=" + dbpath
      s.gsub! "log.dirs=./logs/", "log.dirs=" + logpath
    end
    bin.install libexec/"grakn"
    bin.env_script_all_files(libexec, Language::Java.java_home_env("1.8"))
    dbpath.mkpath
    logpath.mkpath
  end

  test do
    assert_match /RUNNING/i, shell_output("#{bin}/grakn server status")
  end
end
