repos=(
charliermarsh.ruff
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
redhat.java
redhat.vscode-yaml
ryanolsonx.solarized
tomoki1207.pdf
tyriar.lorem-ipsum
vmware.vscode-boot-dev-pack
vmware.vscode-spring-boot
vscjava.vscode-gradle
vscjava.vscode-java-debug
vscjava.vscode-java-dependency
vscjava.vscode-java-pack
vscjava.vscode-java-test
vscjava.vscode-maven
vscjava.vscode-spring-boot-dashboard
vscjava.vscode-spring-initializr
xabikos.javascriptsnippets
zhuangtongfa.material-theme
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
