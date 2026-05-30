repos=(
csstools.postcss
deerawan.vscode-faker
docker.docker
dsznajder.es7-react-js-snippets
eamodio.gitlens
eriklynd.json-tools
ms-azuretools.vscode-containers
ms-azuretools.vscode-docker
perkovec.emoji
pkief.material-icon-theme
redhat.vscode-yaml
rust-lang.rust-analyzer
tamasfe.even-better-toml
tyriar.lorem-ipsum
xabikos.javascriptsnippets
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
