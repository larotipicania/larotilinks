# To learn more about how to use Nix to configure your environment
# see: https://firebase.google.com/docs/studio/customize-workspace
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.05";

  # Packages available in the workspace
  packages = [
    pkgs.nodejs_20
  ];

  # Environment variables
  env = {};

  idx = {
    extensions = [];

    # Enable previews
    previews = {
      enable = true;
      previews = {
        web = {
          command = [
            "bash"
            "-c"
            "npx serve . -l $PORT"
          ];
          manager = "web";
          env = {
            PORT = "$PORT";
          };
        };
      };
    };

    workspace = {
      onCreate = {};
      onStart = {};
    };
  };
}
