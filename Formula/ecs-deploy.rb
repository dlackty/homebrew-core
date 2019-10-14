class EcsDeploy < Formula
  desc "Simple shell script for initiating blue-green deployments on Amazon EC2 Container Service (ECS)"
  homepage "https://github.com/silinternational/ecs-deploy"
  url "https://github.com/silinternational/ecs-deploy/archive/3.7.0.tar.gz"

  depends_on "jq"
  depends_on "awscli"

  def install
    bin.install 'ecs-deploy'
  end

  test do
    assert_match "##### ecs-deploy #####", shell_output("#{bin}/ecs-deploy")
  end
end
