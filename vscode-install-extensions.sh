repos=(
bmewburn.vscode-intelephense-client
deerawan.vscode-faker
DEVSENSE.composer-php-vscode
DEVSENSE.phptools-vscode
DEVSENSE.profiler-php-vscode
dzhavat.bracket-pair-toggler
eamodio.gitlens
Meezilla.json
MehediDracula.php-namespace-resolver
ms-python.python
ms-python.vscode-pylance
onecentlin.laravel-blade
rangav.vscode-thunder-client
rodrigovallades.es7-react-js-snippets
Tyriar.lorem-ipsum
whatwedo.twig
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
