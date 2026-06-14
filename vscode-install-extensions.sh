repos=(
batisteo.vscode-django
csstools.postcss
deerawan.vscode-faker
docker.docker
donjayamanne.python-environment-manager
donjayamanne.python-extension-pack
dsznajder.es7-react-js-snippets
eamodio.gitlens
eriklynd.json-tools
kevinrose.vsc-python-indent
ms-azuretools.vscode-containers
ms-azuretools.vscode-docker
ms-python.debugpy
ms-python.python
ms-python.vscode-pylance
ms-python.vscode-python-envs
njpwerner.autodocstring
perkovec.emoji
pkief.material-icon-theme
redhat.vscode-yaml
tyriar.lorem-ipsum
wholroyd.jinja
xabikos.javascriptsnippets
zhuangtongfa.material-theme
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
