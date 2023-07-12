repos=(
amandeepmittal.pug
batisteo.vscode-django
bmewburn.vscode-intelephense-client
deerawan.vscode-faker
donjayamanne.python-environment-manager
donjayamanne.python-extension-pack
dzhavat.bracket-pair-toggler
eamodio.gitlens
KevinRose.vsc-python-indent
mblode.twig-language-2
Meezilla.json
MehediDracula.php-namespace-resolver
ms-python.python
ms-python.vscode-pylance
njpwerner.autodocstring
onecentlin.laravel-blade
rangav.vscode-thunder-client
rodrigovallades.es7-react-js-snippets
Tyriar.lorem-ipsum
VisualStudioExptTeam.intellicode-api-usage-examples
VisualStudioExptTeam.vscodeintellicode
wholroyd.jinja
)

for repo in "${repos[@]}"
do
	code --install-extension "$repo"
done
