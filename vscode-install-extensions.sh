repos=(
csstools.postcss
deerawan.vscode-faker
docker.docker
dsznajder.es7-react-js-snippets
dzhavat.bracket-pair-toggler
eamodio.gitlens
eriklynd.json-tools
ms-azuretools.vscode-containers
ms-azuretools.vscode-docker
perkovec.emoji
redhat.vscode-yaml
tyriar.lorem-ipsum
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
