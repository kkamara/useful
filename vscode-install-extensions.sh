repos=(
csstools.postcss
deerawan.vscode-faker
docker.docker
dsznajder.es7-react-js-snippets
eamodio.gitlens
eriklynd.json-tools
esbenp.prettier-vscode
ms-azuretools.vscode-containers
ms-azuretools.vscode-docker
perkovec.emoji
pkief.material-icon-theme
prisma.prisma
redhat.vscode-yaml
tyriar.lorem-ipsum
xabikos.javascriptsnippets
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
