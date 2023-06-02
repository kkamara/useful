repos=(
deerawan.vscode-faker
dzhavat.bracket-pair-toggler
eamodio.gitlens
mblode.twig-language-2
Meezilla.json
MehediDracula.php-namespace-resolver
onecentlin.laravel-blade
rangav.vscode-thunder-client
rodrigovallades.es7-react-js-snippets
rust-lang.rust-analyzer
Tyriar.lorem-ipsum
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
