repos=(
csstools.postcss
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
golang.go
mehedidracula.php-namespace-resolver
ms-azuretools.vscode-docker
ms-python.debugpy
ms-python.python
ms-python.vscode-pylance
onecentlin.laravel-blade
redhat.vscode-yaml
rodrigovallades.es7-react-js-snippets
tyriar.lorem-ipsum
whatwedo.twig
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
