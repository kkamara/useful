repos=(
deerawan.vscode-faker
devsense.composer-php-vscode
devsense.intelli-php-vscode
devsense.phptools-vscode
devsense.profiler-php-vscode
donjayamanne.jquerysnippets
dsznajder.es7-react-js-snippets
dzhavat.bracket-pair-toggler
eamodio.gitlens
eriklynd.json-tools
mehedidracula.php-namespace-resolver
ms-azuretools.vscode-docker
ms-python.debugpy
ms-python.python
ms-python.vscode-pylance
onecentlin.laravel-blade
rangav.vscode-thunder-client
redhat.java
rodrigovallades.es7-react-js-snippets
tyriar.lorem-ipsum
visualstudioexptteam.intellicode-api-usage-examples
visualstudioexptteam.vscodeintellicode
vscjava.vscode-gradle
vscjava.vscode-java-debug
vscjava.vscode-java-dependency
vscjava.vscode-java-pack
vscjava.vscode-java-test
vscjava.vscode-maven
whatwedo.twig
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
