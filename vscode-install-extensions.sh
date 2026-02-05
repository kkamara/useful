repos=(
csstools.postcss
deerawan.vscode-faker
docker.docker
dsznajder.es7-react-js-snippets
eamodio.gitlens
eriklynd.json-tools
fwcd.kotlin
github.copilot-chat
mathiasfrohlich.kotlin
ms-azuretools.vscode-containers
ms-azuretools.vscode-docker
perkovec.emoji
pkief.material-icon-theme
redhat.java
redhat.vscode-yaml
rust-lang.rust-analyzer
tamasfe.even-better-toml
tyriar.lorem-ipsum
vscjava.vscode-gradle
vscjava.vscode-java-debug
vscjava.vscode-java-dependency
vscjava.vscode-java-pack
vscjava.vscode-java-test
vscjava.vscode-maven
xabikos.javascriptsnippets
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
