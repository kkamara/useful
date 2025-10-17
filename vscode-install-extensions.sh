repos=(
csstools.postcss
deerawan.vscode-faker
docker.docker
dsznajder.es7-react-js-snippets
dzhavat.bracket-pair-toggler
eamodio.gitlens
eriklynd.json-tools
formulahendry.auto-rename-tag
ms-azuretools.vscode-containers
ms-azuretools.vscode-docker
perkovec.emoji
pkief.material-icon-theme
redhat.vscode-yaml
tyriar.lorem-ipsum
xabikos.javascriptsnippet
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
