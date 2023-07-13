repos=(
amandeepmittal.pug
deerawan.vscode-faker
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
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
