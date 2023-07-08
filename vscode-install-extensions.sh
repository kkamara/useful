repos=(
amandeepmittal.pug
bmewburn.vscode-intelephense-client
deerawan.vscode-faker
DEVSENSE.composer-php-vscode
dzhavat.bracket-pair-toggler
eamodio.gitlens
mblode.twig-language-2
Meezilla.json
MehediDracula.php-namespace-resolver
onecentlin.laravel-blade
rangav.vscode-thunder-client
rodrigovallades.es7-react-js-snippets
Tyriar.lorem-ipsum
vscodevim.vim
wordpresstoolbox.wordpress-toolbox
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
