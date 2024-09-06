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
hridoy.wordpress
johnbillion.vscode-wordpress-hooks
laurencebahiirwa.classicpress-snippets
laurencebahiirwa.elementor-snippets
meezilla.json
mehedidracula.php-namespace-resolver
ms-python.debugpy
ms-python.python
ms-python.vscode-pylance
onecentlin.laravel-blade
rangav.vscode-thunder-client
rodrigovallades.es7-react-js-snippets
tyriar.lorem-ipsum
whatwedo.twig
wordpresstoolbox.wordpress-toolbox
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
