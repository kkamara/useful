repos=(
bmewburn.vscode-intelephense-client
CoenraadS.bracket-pair-colorizer-2
deerawan.vscode-faker
eamodio.gitlens
mblode.twig-language-2
MehediDracula.php-namespace-resolver
neilbrayfield.php-docblocker
onecentlin.laravel-blade
Tyriar.lorem-ipsum
DEVSENSE.phptools-vscode
DEVSENSE.profiler-php-vscode
Meezilla.json
rangav.vscode-thunder-client
rodrigovallades.es7-react-js-snippets
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
